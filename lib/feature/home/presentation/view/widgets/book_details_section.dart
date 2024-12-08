import 'package:flutter/material.dart';
import 'package:project/core/utils/style.dart';
import 'package:project/feature/Home/presentation/view/widgets/book_action.dart';
import 'package:project/feature/Home/presentation/view/widgets/book_rating.dart';
import 'package:project/feature/Home/presentation/view/widgets/custom_image_item.dart';
import 'package:project/feature/home/data/mdl/book_model/book_model.dart';

class BookDetailsSection extends StatelessWidget {
  final BookModel bookModel;
  const BookDetailsSection({required this.bookModel});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height * .30,
            child: CustomImageItem(
                imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail??'')),
        const SizedBox(
          height: 30,
        ),
        Text(
          bookModel.volumeInfo.title ?? '',
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          bookModel.volumeInfo.authors![0],
          style: Styles.textStyle20.copyWith(
            fontStyle: FontStyle.italic,
            color: Colors.white.withOpacity(.7),
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 16,
        ),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          count: bookModel.volumeInfo.averageRating ?? 0,
          rating: bookModel.volumeInfo.ratingsCount ?? 0,
        ),
        const SizedBox(
          height: 37,
        ),
        BookAction(bookModel: bookModel),
      ],
    );
  }
}
