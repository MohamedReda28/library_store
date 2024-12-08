import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});
  @override
  Widget build(BuildContext context) {
      return ListView.builder(
              itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text('')));
  }
}
