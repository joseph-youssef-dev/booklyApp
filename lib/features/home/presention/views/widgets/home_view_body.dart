import 'package:bookly/features/home/presention/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presention/views/widgets/featured_book_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [CustomAppBar(), FeaturedBookListView()]);
  }
}
