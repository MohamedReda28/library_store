import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/feature/Home/presentation/view/widgets/custom_image_item.dart';
import 'package:project/feature/home/presentation/manger/SimilerBooksCubit/similer_books_cubit.dart';

class SimmilarBooksListView extends StatelessWidget {
  const SimmilarBooksListView({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: BlocBuilder<SimilerBooksCubit, SimilerBooksState>(
        builder: (context, state) {
          if (state is SimilerBooksSuccess) {
            return ListView.builder(
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: CustomImageItem(
                        imageUrl: state
                            .books[index].volumeInfo.imageLinks?.thumbnail??'')));
          } else if (state is SimilerBooksFailure) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.errorMessege)));
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
