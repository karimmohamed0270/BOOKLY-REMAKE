import 'package:bookly_app/core/utils/failures.dart';
import 'package:bookly_app/features/home/data/models/book/book.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<Book>>> fetchFeaturedBooks();
  Future<Either<Failure, List<Book>>> fetchNewestBooks();
}
