import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/newest_books_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_actions.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * .22),
                  child: SizedBox(),
                  //TODO
                  /*
                    CustomBookImageItem(),
                  */
                ),
                const SizedBox(height: 25),
                Text("The Jungle Book", style: Styles.textStyle36),
                const SizedBox(height: 5),
                Opacity(
                  opacity: 0.7,
                  child: Text(
                    "Rudyard Kipling",
                    style: Styles.textStyle22.copyWith(
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                // BookRating(mainAxisAlignment: MainAxisAlignment.center),
                const SizedBox(height: 15),
                const BookActions(),
                const Expanded(child: SizedBox(height: 50)),
                Align(
                  alignment: AlignmentGeometry.centerLeft,
                  child: Text(
                    "You can also like",
                    style: Styles.textStyle20.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const SimilarBooksListView(),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
