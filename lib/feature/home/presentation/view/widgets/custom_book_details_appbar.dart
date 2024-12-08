
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
class CustomBookViewAppBar extends StatelessWidget {
  const CustomBookViewAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: ()=>Navigator.pop(context), icon: Icon(Icons.close,size: 30,)),
          IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.cartShopping,size: 30,)),
        ],
      ),
    );
  }
}
