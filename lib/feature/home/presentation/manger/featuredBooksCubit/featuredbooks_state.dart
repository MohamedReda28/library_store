part of 'featuredbooks_cubit.dart';

sealed class FeaturedbooksState extends Equatable {
  const FeaturedbooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedbooksInitial extends FeaturedbooksState {}
final class FeaturedbooksLoading extends FeaturedbooksState {}
final class FeaturedbooksFailure extends FeaturedbooksState {
 final String errorMessege;
const FeaturedbooksFailure(this.errorMessege);
}
final class FeaturedbooksSuccess extends FeaturedbooksState {
  final List<BookModel>books;
 const FeaturedbooksSuccess(this.books);
}