import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:project/core/utils/style.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        Icon(FontAwesomeIcons.solidStar,color: Color(0xffFFDD4F),),
          const SizedBox(width: 6.5,),
        Text('4.8',style: Styles.textStyle16,),
        const SizedBox(width: 5,),
              Text('(2331)',style: Styles.textStyle14.copyWith(color: Color(0xff707070)),)
      ],
    );
  }
}
