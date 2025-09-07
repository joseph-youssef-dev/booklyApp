import 'package:bookly/features/home/presentation/views/widgets/newest_books_item.dart';
import 'package:flutter/cupertino.dart';

class SearchedBooksListView extends StatelessWidget {
  const SearchedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            // child: const BestSellerItem(bookModel: ),
          );
        },
      ),
    );
  }
}
