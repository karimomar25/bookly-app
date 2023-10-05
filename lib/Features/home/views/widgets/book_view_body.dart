import 'package:bookly_app/Features/home/views/widgets/custom_appbar_bookview.dart';
import 'package:flutter/material.dart';

class BookViewBody extends StatelessWidget {
  const BookViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [AppBarBookView()],
      ),
    );
  }
}

