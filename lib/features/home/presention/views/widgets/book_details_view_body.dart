import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presention/views/widgets/best_seller_item.dart';
import 'package:bookly/features/home/presention/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presention/views/widgets/custom_book_image_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .22),
            child: const CustomBookImageItem(),
          ),
          const SizedBox(height: 15),
          Text("The Jungle Book", style: Styles.textStyle36),
          const SizedBox(height: 2),
          Opacity(
            opacity: 0.7,
            child: Text(
              "Rudyard Kipling",
              style: Styles.textStyle22.copyWith(fontStyle: FontStyle.italic),
            ),
          ),
          const SizedBox(height: 5),
          const BookRating(mainAxisAlignment: MainAxisAlignment.center),
        ],
      ),
    );
  }
}
