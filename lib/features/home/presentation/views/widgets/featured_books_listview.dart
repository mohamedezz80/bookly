
import 'package:flutter/material.dart';
import 'featured_list_view_items.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(right: 8),
              child: FeaturedListViewItems(),
            );
          }
      ),
    );
  }
}