import 'package:bookly_app/Features/home/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/views/widgets/books_action.dart';
import 'package:bookly_app/Features/home/views/widgets/custom_appbar_bookview.dart';
import 'package:bookly_app/Features/home/views/widgets/featured_book.dart';
import 'package:bookly_app/Features/home/views/widgets/similar_books_listview.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookViewBody extends StatelessWidget {
  const BookViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const AppBarBookView(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * .2),
                  child: const FeatueredBook(),
                ),
                const SizedBox(
                  height: 43,
                ),
                const Text(
                  "The Jungle Book",
                  style: Styles.TextStyle30,
                ),
                const SizedBox(
                  height: 6,
                ),
                Opacity(
                  opacity: .7,
                  child: Text(
                    "Rudyard Kipling",
                    style: Styles.TextStyle18.copyWith(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                const BookRating(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                const SizedBox(
                  height: 37,
                ),
                const BooksAction(),
                Expanded(
                  child: const SizedBox(
                    height: 50,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "You can also like",
                    style: Styles.TextStyle14.copyWith(
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SimilarBooksListView(),
                const SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
