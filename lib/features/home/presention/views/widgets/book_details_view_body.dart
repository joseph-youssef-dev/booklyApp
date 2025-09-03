import 'package:bookly/features/home/presention/views/widgets/custom_book_details_app_bar.dart';
import 'package:flutter/cupertino.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(children: [CustomBookDetailsAppBar()]),
    );
  }
}
