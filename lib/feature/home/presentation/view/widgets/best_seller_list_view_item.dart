import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project/core/utils/app_Router.dart';
import 'package:project/core/utils/style.dart';
import 'package:project/feature/Home/presentation/view/widgets/book_rating.dart';
import 'package:project/feature/home/data/mdl/book_model/book_model.dart';

import 'package:project/feature/home/presentation/view/widgets/custom_image_item.dart';

class BooksListViewItem extends StatelessWidget {
  final BookModel bookModel;
  const BooksListViewItem({required this.bookModel});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => GoRouter.of(context)
            .push(AppRouter.KbookDetailsView, extra: bookModel),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              child: CustomImageItem(
                  imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail??'')),
          SizedBox(
            width: 30,
          ),
          Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    bookModel.volumeInfo.title ?? 'test',
                    style: Styles.textStyle20,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Opacity(
                  opacity: 0.8,
                  child: Text(
                    bookModel.volumeInfo.authors![0],
                    style: Styles.textStyle14,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Text(
                      'Free',
                      style: Styles.textStyle20
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    BookRating(
                      rating: bookModel.volumeInfo.averageRating ?? 0,
                      count: bookModel.volumeInfo.ratingsCount ?? 0,
                    )
                  ],
                ),
              ]))
        ]));
  }
}
