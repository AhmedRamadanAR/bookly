import 'package:bookly/features/home/domain/entities/book_entity.dart';

abstract class NewestBooksStates {}

class NewestBooksInitial extends NewestBooksStates {}
class NewestBooksLoading extends NewestBooksStates {}
class NewestBooksError extends NewestBooksStates {
  final String errorMessage;
  NewestBooksError( this.errorMessage);
}
class NewestBooksSuccess extends NewestBooksStates {
  final List<BookEntity>books;
  NewestBooksSuccess(this.books);
}
