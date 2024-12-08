import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/feature/Home/presentation/view/widgets/book_details_view_body.dart';
import 'package:project/feature/home/data/mdl/book_model/book_model.dart';

import 'package:project/feature/home/presentation/manger/SimilerBooksCubit/similer_books_cubit.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<SimilerBooksCubit>(context).fetchSimilerBooks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetailsViewBody(bookModel: widget.bookModel),
    );
  }
}
