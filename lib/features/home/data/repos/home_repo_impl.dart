import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeLocalDataSource homeLocalDataSource;
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepoImpl(
      {required this.homeRemoteDataSource, required this.homeLocalDataSource});

  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks({int pageNumber=0}) async {
    try {
      List<BookEntity> featuredBooksList;
      featuredBooksList = homeLocalDataSource.fetchFeaturedBooks(pageNumber: pageNumber);
      if (featuredBooksList.isNotEmpty) {
        return right(featuredBooksList);
      } else {
        featuredBooksList = await homeRemoteDataSource.fetchFeaturedBooks(pageNumber:pageNumber);
        return right(featuredBooksList);
      }
    } catch (error) {
      if(error is DioException){
        return left(ServerFailure.fromDioError(error));

      }
      return left(Failure(error.toString()));

    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewsBooks() async {
    try {
      List<BookEntity> featuredBooksList;
      featuredBooksList = homeLocalDataSource.fetchNewsBooks();
      if (featuredBooksList.isNotEmpty) {
        return right(featuredBooksList);
      } else {
        featuredBooksList = await homeRemoteDataSource.fetchNewsBooks();
        return right(featuredBooksList);
      }
    } catch (error) {
      if(error is DioException){
        return left(ServerFailure.fromDioError(error));

      }
      return left(Failure(error.toString()));

    }
  }
}
