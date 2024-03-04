
import 'package:flutter/material.dart';
import 'book_detail_section.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BookDetailsSection(),
                Expanded(
                  child: SizedBox(height: 50),
                ),
                SimilarBooksSection(),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ],
    );
  }
}



