import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project/feature/Home/presentation/view/widgets/book_details_section.dart';
import 'package:project/feature/Home/presentation/view/widgets/custom_book_details_appbar.dart';
import 'package:project/feature/Home/presentation/view/widgets/simmilar_books_section.dart';
import 'package:project/feature/home/data/mdl/book_model/book_model.dart';

class BookDetailsViewBody extends StatelessWidget {
  final BookModel bookModel;
  const BookDetailsViewBody({required this.bookModel});
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomBookViewAppBar(),
                BookDetailsSection(
                  bookModel: bookModel,
                ),
                const Expanded(
                    child: SizedBox(
                  height: 40,
                )),
                const SimmilarBooksSection(),
                const SizedBox(
                  height: 32,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
