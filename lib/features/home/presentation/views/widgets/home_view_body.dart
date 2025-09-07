import 'package:bookly/core/constants/app_fonts.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/newest_books_list_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_book_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: const CustomAppBar(),
              ),
              const FeaturedBookListView(),
              const SizedBox(height: 35),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Text(
                  "Newest Books",
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
            child: const NewestBooksListView(),
          ),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 10)),
      ],
    );
  }
}
