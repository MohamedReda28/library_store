import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project/feature/SearchView/presentation/view/Widgets/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});
  @override
  Widget build(BuildContext context) {
 return Scaffold(
  body:  SafeArea(child: SearchViewBody()),
 );
  }
}
