import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/utils/failures.dart';
import 'package:bookly_app/features/home/data/models/book/book.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImp implements HomeRepo {
  final ApiService apiService;

  HomeRepoImp(this.apiService);

  @override
  Future<Either<Failure, List<Book>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
        endpoint: '&q=subject:programming&Filtering=free-ebooks',
      );
      List<Book> books = [];
      books.add(Book.fromJson(data));
      return right(books);
    } on DioException catch (e) {
      return left(ServerFailure(e.message ?? 'Something went wrong'));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Book>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
        endpoint: '&q=subject:programming&sortBy=newest&Filtering=free-ebooks',
      );
      List<Book> books = [];
      books.add(Book.fromJson(data));
      return right(books);
    } on DioException catch (e) {
      return left(ServerFailure(e.message ?? 'Something went wrong'));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
