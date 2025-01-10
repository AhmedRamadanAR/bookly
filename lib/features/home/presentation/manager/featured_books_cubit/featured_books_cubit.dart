import 'package:bookly/features/home/domain/use_cases/fetch_featured_books_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'featured_books_states.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksStates> {
  FeaturedBooksCubit(this.featuredBooksUseCase) : super(FeaturedBooksInitial());

  final FetchFeaturedBooksUseCase featuredBooksUseCase;

  Future<void> fetchFeaturedBooks({int pageNumber = 0}) async {
    if (pageNumber == 0) {
      emit(FeaturedBooksLoading());
    } else {
      emit(FeaturedBooksPaginationLoading());
    }
    var result = await featuredBooksUseCase.call(pageNumber);
    result.fold(
        (failure) => {
              if (pageNumber == 0)
                {emit(FeaturedBooksError(failure.message))}
              else
                {emit(FeaturedBooksPaginationError(failure.message))}
            },
        (books) => {emit(FeaturedBooksSuccess(books))});
  }
}
