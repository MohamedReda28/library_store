import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:project/core/utils/style.dart';

class BookRating extends StatelessWidget {
  final num rating;
  final num count;

  const BookRating({
    required this.rating,
    required this.count,
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 14,
        ),
        const SizedBox(
          width: 6.5,
        ),
        Text(
          "$rating",
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          " $count",
          style: Styles.textStyle14.copyWith(color: Color(0xff707070)),
        )
      ],
    );
  }
}
