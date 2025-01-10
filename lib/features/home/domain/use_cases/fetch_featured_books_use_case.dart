import 'package:bookly/core/use_cases/use_cases.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../entities/book_entity.dart';
import '../repos/home_repo.dart';

class FetchFeaturedBooksUseCase  extends UseCase<List<BookEntity>,void> {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase({required this.homeRepo});

  @override
  Future<Either<Failure, List<BookEntity>>> call([int pageNumber=0]) async {
    return  await homeRepo.fetchFeaturedBooks(pageNumber:pageNumber);

  }


}

