import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly/features/search/presentation/views/widgets/searched_books_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(searchController: TextEditingController()),
          SizedBox(height: 20),
          Text(
            "Search Result",
            style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 20),
          SearchedBooksListView(),
        ],
      ),
    );
  }
}
