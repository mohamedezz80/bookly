
import 'package:flutter/material.dart';

import '../../../../../constant.dart';
import '../../../../../core/utils/public_widgets/custom_text.dart';
import 'book_action.dart';
import 'book_rating.dart';
import 'custom_book_details_appbar.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CustomBookDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.2,
            vertical: 5,
          ),
          child: const CustomBookImage(
            imageUrl: 'https://th.bing.com/th/id/R.70fe875f463f2ead03b599c5cbaaac5d?rik=e6DE9GxHERHQIA&pid=ImgRaw&r=0',
          ),
        ),
        const SizedBox(height: 43),
        const CustomText(
          text: 'The Jungle Book',
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontFamily: kGtSectraFine,
          letterSpacing: 1.2,
        ),
        const SizedBox(height: 6),
        const Opacity(
          opacity: 0.8,
          child: CustomText(
            text: 'Rudyard kipling',
            fontSize: 18,
            fontWeight: FontWeight.w400,
            letterSpacing: 1.2,
          ),
        ),
        const SizedBox(height: 18),
        const BookRating(
          rating: 5,
          count: 250,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(height: 37),
        const BookAction(),
      ],
    );
  }
}