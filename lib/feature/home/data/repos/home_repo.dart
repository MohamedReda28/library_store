import 'package:eitherx/eitherx.dart';
import 'package:project/core/utils/errors/failure.dart';
import 'package:project/feature/home/data/mdl/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks();
}
