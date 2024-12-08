import 'package:flutter/material.dart';
import 'package:project/core/utils/custom_buttom.dart';
import 'package:project/core/utils/function/get_text.dart';
import 'package:project/core/utils/function/luncher_url.dart';
import 'package:project/core/utils/style.dart';
import 'package:project/feature/home/data/mdl/book_model/book_model.dart';

class BookAction extends StatelessWidget {
  const BookAction({required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
              child: CustomButtom(
            fontSize: Styles.textStyle18
                .copyWith(color: Colors.black, fontWeight: FontWeight.w900),
            backgroundColor: Colors.white,
            textColor: Colors.black,
            title: 'Free',
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
          )),
          Expanded(
              child: CustomButtom(
            onPressed: () {
              customLuncherUrl(url: bookModel.volumeInfo.previewLink);
            },
            fontSize: Styles.textStyle18.copyWith(color: Colors.white),
            backgroundColor: Color(0xffEF8262),
            textColor: Colors.white,
            title: getText(bookModel: bookModel),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16)),
          ))
        ],
      ),
    );
  }
}
