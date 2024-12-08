import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:project/feature/Home/data/repos/home_repo.dart';
import 'package:project/feature/home/data/mdl/book_model/book_model.dart';

part 'featuredbooks_state.dart';

class FeaturedbooksCubit extends Cubit<FeaturedbooksState> {
  FeaturedbooksCubit(this.homeRepo) : super(FeaturedbooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedbooksLoading());
    var response = await homeRepo.fetchFeaturedBooks();
    response.fold((Failure) {
      emit(FeaturedbooksFailure(Failure.errorMessege));
    }, (data) {
      emit(FeaturedbooksSuccess(data));
    });
  }
}