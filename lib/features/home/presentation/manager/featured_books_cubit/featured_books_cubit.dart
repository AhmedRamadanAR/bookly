import 'package:bookly/features/home/domain/use_cases/fetch_featured_books_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'featured_books_states.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksStates> {
  FeaturedBooksCubit(this.featuredBooksUseCase) : super(FeaturedBooksInitial());

  final FetchFeaturedBooksUseCase featuredBooksUseCase;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await featuredBooksUseCase.call();
    result.fold((failure) =>
    {
      emit(FeaturedBooksError(failure.message))
    }, (books) => {
      emit(FeaturedBooksSuccess(books))
    });
  }
}
