import 'package:flutter/material.dart';
import 'package:project/core/utils/style.dart';
import 'package:project/feature/Home/presentation/view/widgets/simmilar_books_list_view.dart';
class SimmilarBooksSection extends StatelessWidget {
  const SimmilarBooksSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'you can also like',
          style: Styles.textStyle18,
        ),
        const SizedBox(
          height: 16,
        ),
        SimmilarBooksListView(),
      ],
    );
  }
}
