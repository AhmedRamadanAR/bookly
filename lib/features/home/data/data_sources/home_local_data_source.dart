import '../../domain/entities/book_entity.dart';

abstract class HomeLocalDataSource {
List<BookEntity> fetchFeaturedBooks();

List<BookEntity> fetchNewsBooks();
}
class HomeLocalDataSourceImpl  extends HomeLocalDataSource{
  @override
  List<BookEntity> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  List<BookEntity> fetchNewsBooks() {
    // TODO: implement fetchNewsBooks
    throw UnimplementedError();
  }
}