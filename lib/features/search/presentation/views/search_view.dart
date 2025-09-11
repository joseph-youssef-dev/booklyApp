import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/search/data/repo/search_repo_impl.dart';
import 'package:bookly/features/search/presentation/view_model/cubit/search_books_cubit.dart';
import 'package:bookly/features/search/presentation/views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchBooksCubit(getIt.get<SearchRepoImpl>()),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(child: SearchViewBody()),
      ),
    );
  }
}
