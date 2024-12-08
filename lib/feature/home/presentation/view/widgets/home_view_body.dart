import 'package:flutter/material.dart';

import 'package:project/core/utils/style.dart';
import 'package:project/feature/Home/presentation/view/widgets/best_seeller_list_view_builder.dart';
import 'package:project/feature/Home/presentation/view/widgets/custom_appBar.dart';
import 'package:project/feature/Home/presentation/view/widgets/featured_book_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverToBoxAdapter(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppbar(),
            FeaturedBookListView(),
            SizedBox(
              height: 40,
            ),
            Text('Best Seller', style: Styles.textStyle18),
          ],
        ),
      )),
      SliverFillRemaining(child: BestSeellerListViewBuilder())
    ]);
  }
}
