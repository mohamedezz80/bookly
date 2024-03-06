import 'package:bookly_app/core/utils/public_widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'best_seller_list_view.dart';
import 'custom_appbar.dart';
import 'featured_books_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeaturedBooksListView(),
              SizedBox(
                height: 45,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20,bottom: 10),
                child: CustomText(
                  text: 'Newest Books',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: NewestListView(),
        ),
      ],
    );
  }
}
