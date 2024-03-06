import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/public_widgets/custom_text.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.center,
    required this.rating,
    required this.count,
  });
  final num rating;
  final int count;
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: mainAxisAlignment,
      children:  [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 15,
        ),
        const SizedBox(width: 6.3),
        CustomText(
          text: rating.toString(),
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        const SizedBox(width: 5),
        Opacity(
          opacity: 0.5,
          child: CustomText(
            text: '($count)',
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
