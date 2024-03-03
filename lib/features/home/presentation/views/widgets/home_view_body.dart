
import 'package:flutter/material.dart';
import 'custom_appbar.dart';
import 'featured_books_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children:
        [
          CustomAppBar(),
          FeaturedBooksListView(),
        ],
      ),
    );
  }
}









