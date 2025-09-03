import 'package:bookly/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
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
          Column(
            children: [
              Text("data1"),
              Text("auther name"),
              Row(children: [Text("price"), Text("rate")]),
            ],
          ),
        ],
      ),
    );
  }
}
