import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/features/search/data/repo/search_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this.searchRepo) : super(SearchBooksInitial());

  final SearchRepo searchRepo;

  Future<void> fetchSearchedBooks({required String bookName}) async {
    emit(SearchBooksLoading());
    var result = await searchRepo.fetchSearchedBooks(search: bookName);

    result.fold(
      (failure) {
        emit(SearchBooksFailure(failure.errMessage));
      },
      (search) {
        if (!isClosed) {
          emit(SearchBooksSuccess(search));
        }
      },
    );
  }
}
