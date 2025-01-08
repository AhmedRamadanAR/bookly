import 'package:bookly/features/home/domain/use_cases/fetch_new_books_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'newst_books_states.dart';

class NewestBooksCubit extends Cubit<NewestBooksStates> {
  NewestBooksCubit(this.fetchNewBooksUseCase) : super(NewestBooksInitial());
  final FetchNewBooksUseCase fetchNewBooksUseCase;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await fetchNewBooksUseCase.call();
    result.fold((failure) => {emit(NewestBooksError(failure.message))},
        (books) => {NewestBooksSuccess(books)});
  }
}
