import 'package:bookly_app/Features/home/views/widgets/best_seller_item_view.dart';
import 'package:bookly_app/Features/home/views/widgets/custom_appbar.dart';
import 'package:bookly_app/Features/home/views/widgets/featured_books_listview.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';

import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBookListView(),
          SizedBox(
            height: 50,
          ),
          Text(
            "Best Seller",
            style: Styles.TextStyle18,
          ),
          SizedBox(
            height: 20,
          ),
          BestSellerItem()
        ],
      ),
    );
  }
}
