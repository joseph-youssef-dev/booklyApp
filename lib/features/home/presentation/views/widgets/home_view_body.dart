import 'package:bookly/core/constants/app_fonts.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_book_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: const CustomAppBar(),
              ),
              FeaturedBookListView(),
              const SizedBox(height: 35),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Text(
                  "Best Seller",
                  style: Styles.textStyle24.copyWith(fontFamily: kGtSectraFine),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),

        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: const BestSellerListView(),
          ),
        ),
      ],
    );
  }
}
