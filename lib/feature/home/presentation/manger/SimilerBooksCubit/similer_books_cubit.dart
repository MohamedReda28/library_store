import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:project/feature/Home/data/repos/home_repo.dart';
import 'package:project/feature/home/data/mdl/book_model/book_model.dart';

part 'similer_books_state.dart';

class SimilerBooksCubit extends Cubit<SimilerBooksState> {
  SimilerBooksCubit(this.homeRepo) : super(SimilerBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchSimilerBooks() async {
    emit(SimilerBooksLoading());
    var response = await homeRepo.fetchSimilarBooks();
    response.fold((Failure) {
      emit(SimilerBooksFailure(errorMessege: Failure.errorMessege));
    }, (data) {
      emit(SimilerBooksSuccess(books: data));
    });
  }
}
