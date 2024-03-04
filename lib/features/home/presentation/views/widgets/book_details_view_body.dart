
import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utils/public_widgets/custom_text.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

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
        ],
      ),
    );
  }
}
