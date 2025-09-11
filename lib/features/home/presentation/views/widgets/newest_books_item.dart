import 'package:bookly/core/constants/app_fonts.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewestBooksItem extends StatelessWidget {
  const NewestBooksItem({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView, extra: bookModel);
      },
      child: SizedBox(
        height: 130,
        child: Row(
          children: [
            CustomBookImageItem(
              imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? "",
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Text(
                      bookModel.volumeInfo.title!,
                      style: Styles.textStyle22.copyWith(
                        fontFamily: kGtSectraFine,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    bookModel.volumeInfo.authors?[0] ?? "",
                    style: Styles.textStyle16,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    children: [
                      Text(
                        "Free",
                        style: Styles.textStyle16.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 70),
                      BookRating(
                        rating: bookModel.volumeInfo.averageRating ?? 0,
                        count: bookModel.volumeInfo.ratingsCount ?? 0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.rating,
    required this.count,
  });

  final double rating;
  final int count;

  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(Icons.star, color: Colors.amber),
        const SizedBox(width: 6.3),
        Text(
          "$rating",
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(width: 5),
        Text(
          "($count)",
          style: Styles.textStyle16.copyWith(color: const Color(0xff888590)),
        ),
      ],
    );
  }
}
