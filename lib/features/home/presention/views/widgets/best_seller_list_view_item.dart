import 'package:bookly/core/utils/assets_data.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.6 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(AssetsData.testImage),
                ),
              ),
            ),
          ),
          const SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Text(
                    "Harry Potter and the Goblet of Fire ",
                    style: Styles.textStyle26,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text("J.K. Rowling", style: Styles.textStyle20),
                Row(
                  children: [
                    Text(
                      "19,99 \$",
                      style: Styles.textStyle20.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 80),
                    const BookRating(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.star, color: Colors.amber),
        const SizedBox(width: 6.3),
        const Text("4.8", style: Styles.textStyle20),
        const SizedBox(width: 5),
        Text(
          "(245)",
          style: Styles.textStyle16.copyWith(color: const Color(0xff888590)),
        ),
      ],
    );
  }
}
