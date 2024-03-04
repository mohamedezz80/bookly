
import 'package:flutter/material.dart';
import '../../../../../core/utils/public_widgets/custom_text.dart';
import 'similar_book_lList_view.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection ({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: 'You can also like',
          fontWeight: FontWeight.w600,
          fontSize: 14,
        ),
        SizedBox(height: 16),
        SimilarBooksListView(),
      ],
    );
  }
}