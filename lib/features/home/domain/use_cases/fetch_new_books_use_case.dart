import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/use_cases/use_cases.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class fetchNewBooksUseCase extends UseCase<List<BookEntity>,void>{
  final HomeRepo homeRepo;
  fetchNewBooksUseCase({required this.homeRepo});
  @override
  Future<Either<Failure, List<BookEntity>>> call([void param]) {
  return homeRepo.fetchNewsBooks();
  }

}