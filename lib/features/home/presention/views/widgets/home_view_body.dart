import 'package:bookly/core/constants/app_fonts.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presention/views/widgets/best_seller_list_view_item.dart';
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
          const CustomAppBar(),
          const FeaturedBookListView(),
          const SizedBox(height: 35),
          Text(
            "Best Seller",
            style: Styles.textStyle24.copyWith(fontFamily: kGtSectraFine),
          ),
          SizedBox(height: 20),
          const BestSellerListViewItem(),
        ],
      ),
    );
  }
}
