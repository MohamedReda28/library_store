import 'package:flutter/material.dart';
import 'package:project/core/utils/style.dart';
import 'package:project/feature/SearchView/presentation/view/Widgets/custom_text_fild.dart';
import 'package:project/feature/SearchView/presentation/view/Widgets/search_result_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});
  @override
  Widget build(BuildContext context) {
  return 
    Padding(
      padding: EdgeInsets.only(left: 30,right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         CustomTextFild(),

          SizedBox(height: 30,),

          Text('Search Result',style: Styles.textStyle20,),

           SizedBox(height: 20,),

          Expanded(child: SearchResultListView()),
      
        ],
      ),
    );
  }

}
