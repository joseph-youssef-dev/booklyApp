import 'package:bookly/features/home/presention/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presention/views/widgets/custom_book_image_item.dart';
import 'package:flutter/cupertino.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: const CustomBookImageItem(),
          ),
        ],
      ),
    );
  }
}
