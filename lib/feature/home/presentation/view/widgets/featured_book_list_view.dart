import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:project/core/utils/app_Router.dart';
import 'package:project/feature/home/presentation/manger/newestBooksCubit/newest_cubit_cubit.dart';
import 'package:project/feature/home/presentation/view/widgets/custom_image_item.dart';

class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestCubitState>(
      builder: (context, state) {
        if (state is NewestCubitSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .28,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                var imageUrl =
                    state.books[index].volumeInfo.imageLinks?.thumbnail??'';
                return Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: GestureDetector(
                      onTap: () => GoRouter.of(context).push(
                          AppRouter.KbookDetailsView,
                          extra: state.books[index]),
                      child: CustomImageItem(imageUrl: imageUrl)),
                );
              },
            ),
          );
        } else if (state is NewestCubitFailure) {
          {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.errorMessege)));
          }
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return SizedBox();
      },
    );
  }
}
