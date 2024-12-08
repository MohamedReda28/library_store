import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/feature/Home/presentation/view/widgets/best_seller_list_view_item.dart';
import 'package:project/feature/home/presentation/manger/newestBooksCubit/newest_cubit_cubit.dart';

class BestSeellerListViewBuilder extends StatelessWidget {
  const BestSeellerListViewBuilder({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 30, right: 10),
        child: BlocBuilder<NewestBooksCubit, NewestCubitState>(
          builder: (context, state) {
            if(state is NewestCubitSuccess)
            {
              return ListView.builder(
                itemCount: state.books.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: BooksListViewItem(bookModel:state.books[index])),
              );
            }else if(state is NewestCubitFailure)
            {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(state.errorMessege)));
            }else{
              return Center(child: CircularProgressIndicator(),);
            }
            return SizedBox();
          },
        ));
  }
}
