import 'package:bookly/features/search/presentation/view_model/cubit/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key, required this.searchController});

  final TextEditingController searchController;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: searchController,
      decoration: InputDecoration(
        enabledBorder: buildOutlineBorder(),

        focusedBorder: buildOutlineBorder(),

        hintText: "Search a book ...",
        suffixIcon: IconButton(
          onPressed: () {
            final query = searchController.text.trim();

            if (query.isNotEmpty) {
              context.read<SearchBooksCubit>().fetchSearchedBooks(
                bookName: query,
              );
            }
          },
          icon: const Opacity(opacity: .8, child: Icon(Icons.search, size: 30)),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(color: Colors.white),
    );
  }
}
