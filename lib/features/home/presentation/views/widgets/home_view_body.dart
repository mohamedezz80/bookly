import 'package:bookly_app/core/utils/public_widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'best_seller_listview_item.dart';
import 'custom_appbar.dart';
import 'featured_books_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(
            height: 45,
          ),
          CustomText(
            text: 'Best Seller',
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}

