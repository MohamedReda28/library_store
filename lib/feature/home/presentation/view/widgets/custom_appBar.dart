import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:go_router/go_router.dart';
import 'package:project/core/utils/app_Router.dart';
import 'package:project/core/utils/assets.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AssetsData.logo,
            height: 20,
          ),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRouter.KsearchView);
              },
              icon: Icon(FontAwesomeIcons.magnifyingGlass))
        ],
      ),
    );
  }
}
