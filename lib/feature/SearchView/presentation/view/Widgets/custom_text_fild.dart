import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';


class CustomTextFild extends StatelessWidget {
  const CustomTextFild({super.key});
  @override
  Widget build(BuildContext context) {
  return
          TextField(
            decoration: InputDecoration(
              enabledBorder: OutLineInputBorderModify(),
              focusedBorder: OutLineInputBorderModify(),
              hintText: 'search',
              suffixIcon: Icon(FontAwesomeIcons.magnifyingGlass,size: 20,)
            ),
          );
  }

  OutlineInputBorder OutLineInputBorderModify() {
    return OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.white)
        );
  }
}
