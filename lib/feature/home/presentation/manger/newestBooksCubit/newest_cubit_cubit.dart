import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/feature/Home/data/repos/home_repo.dart';
import 'package:project/feature/home/data/mdl/book_model/book_model.dart';

part 'newest_cubit_state.dart';

class NewestBooksCubit extends Cubit<NewestCubitState> {
  NewestBooksCubit(this.homeRepo) : super(NewestCubitInitial());
  final HomeRepo homeRepo;
  Future<void> fetchNewestBooks() async {
    emit(NewestCubitLoading());
    var respons = await homeRepo.fetchNewsetBooks();
    respons.fold((Failure) {
      emit(NewestCubitFailure(Failure.errorMessege));
    }, (data) {
      emit(NewestCubitSuccess(data));
    });
  }
}
