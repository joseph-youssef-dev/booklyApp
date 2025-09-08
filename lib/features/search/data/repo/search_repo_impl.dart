import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/search/data/repo/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo {
  final ApiService apiService;

  SearchRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchedBooks({
    required String search,
  }) async {
    try {
      var response = await apiService.get(
        endPoint: "volumes?Filtering=free-ebooks&q=$search",
      );

      List<BookModel> searchedBooks = [];
      for (var book in response["items"]) {
        searchedBooks.add(BookModel.fromJson(book));
      }

      return right(searchedBooks);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }

      return left(ServerFailure(e.toString()));
    }
  }
}
