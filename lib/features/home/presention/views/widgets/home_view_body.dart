import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presention/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presention/views/widgets/featured_book_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBookListView(),
          SizedBox(height: 35),
          Text("Best Seller", style: Styles.titleMedium),
        ],
      ),
    );
  }
}
