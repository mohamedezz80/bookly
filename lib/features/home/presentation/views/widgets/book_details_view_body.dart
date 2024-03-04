
import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utils/public_widgets/custom_button.dart';
import 'package:bookly_app/core/utils/public_widgets/custom_text.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_book_lList_view.dart';
import 'package:flutter/material.dart';

import 'book_action.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return  Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.2,
              vertical: 5,
            ),
            child: const CustomBookImage(),
          ),
          const SizedBox(height: 43),
          const Align(
            alignment: Alignment.center,
            child: CustomText(
                text: 'The Jungle Book',
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: kGtSectraFine,
              letterSpacing: 1.2,
            ),
          ),
          const SizedBox(height: 6),
          const Align(
            alignment: Alignment.center,
            child: Opacity(
              opacity: 0.8,
              child: CustomText(
                text: 'Rudyard kipling',
                fontSize: 18,
                fontWeight: FontWeight.w400,
                letterSpacing: 1.2,
              ),
            ),
          ),
          const SizedBox(height: 18),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(height: 37),
          const BookAction(),
          const SizedBox(height: 50),
          const CustomText(
              text: 'You can also like',
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
          const SizedBox(height: 16),
          const SimilarBooksListView(),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}




