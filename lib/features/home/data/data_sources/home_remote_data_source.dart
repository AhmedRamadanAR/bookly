import 'package:bookly/constants.dart';
import 'package:bookly/core/utilis/api_service.dart';
import 'package:bookly/core/utilis/functions/save_books.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';

import '../../domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks({int pageNumber});

  Future<List<BookEntity>> fetchNewsBooks();
}


class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {

  @override
  Future<List<BookEntity>> fetchFeaturedBooks({ int pageNumber=0}) async {
    var response = await ApiService.getData(url: "volumes?q= programming&Filtering=free-ebooks&startIndex=${pageNumber*10}");
  List<BookEntity>books=getBooksList(response);
    saveBooksData(books, kFeaturedBox);
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewsBooks() async {
    var response = await ApiService.getData(url: "volumes?q= programming&Filtering=free-ebooks&Sorting=newest");

    List<BookEntity> books = getBooksList(response);
    saveBooksData(books, kNewestBox);
    return books;
  }

  List<BookEntity> getBooksList(Map<String, dynamic> data) {
    List<BookEntity> books = [];

    for (var bookMap in data['items']) {
      books.add(BookModel.fromJson(bookMap));
    }
    return books;
  }
}
