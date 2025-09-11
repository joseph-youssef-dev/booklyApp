import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_indicator.dart';
import 'package:bookly/features/home/presentation/views/widgets/newest_books_item.dart';
import 'package:bookly/features/search/presentation/view_model/cubit/search_books_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchedBooksListView extends StatelessWidget {
  const SearchedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
      builder: (context, state) {
        if (state is SearchBooksSuccess) {
          return Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: NewestBooksItem(bookModel: state.searchedBooks[index]),
                );
              },
            ),
          );
        } else if (state is SearchBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else if (state is SearchBooksLoading) {
          return CustomIndicator();
        } else {
          return SizedBox(
            height: 500,
            width: double.infinity,
            child: Center(child: Text("start search your books")),
          );
        }
      },
    );
  }
}
