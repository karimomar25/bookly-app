import 'package:bookly_app/Features/home/views/widgets/custom_appbar_bookview.dart';
import 'package:bookly_app/Features/home/views/widgets/featured_book.dart';
import 'package:flutter/material.dart';

class BookViewBody extends StatelessWidget {
  const BookViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const AppBarBookView(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .17 ),
            child: const FeatueredBook(),
          ),
        ],
      ),
    );
  }
}
