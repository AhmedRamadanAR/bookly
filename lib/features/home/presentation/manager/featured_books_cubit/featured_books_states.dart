


import '../../../domain/entities/book_entity.dart';

abstract class FeaturedBooksStates {}

class FeaturedBooksInitial extends FeaturedBooksStates {}
class FeaturedBooksLoading extends FeaturedBooksStates {}
class FeaturedBooksPaginationLoading extends FeaturedBooksStates{}
class FeaturedBooksPaginationError extends FeaturedBooksStates{
  final String errorMessage;
  FeaturedBooksPaginationError( this.errorMessage);
}

class FeaturedBooksError extends FeaturedBooksStates {
  final String errorMessage;
  FeaturedBooksError( this.errorMessage);
}
class FeaturedBooksSuccess extends FeaturedBooksStates {
  final List<BookEntity> books;
  FeaturedBooksSuccess(this.books);

}
