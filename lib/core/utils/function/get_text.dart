import 'package:project/feature/home/data/mdl/book_model/book_model.dart';

String getText({required BookModel bookModel}) {
  if (bookModel.volumeInfo.previewLink == null) {
    return 'NotAvilabel';
  } else {
    return 'Preview';
  }
}
