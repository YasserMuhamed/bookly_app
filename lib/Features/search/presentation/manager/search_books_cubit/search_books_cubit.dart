import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/search/data/search_repos/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this.searchRepo) : super(SearchBooksInitial());
  final SearchRepo searchRepo;

  Future<void> fetchSearchBooks({required String search}) async {
    emit(SearchBooksLoading());
    var result = await searchRepo.fetchSearchBooks(search: search);

    result.fold((failure) {
      emit(SearchBooksFailure(errMessage: failure.errMessage));
    }, (books) {
      emit(SearchBooksSuccess(books: books));
    });
  }
}
