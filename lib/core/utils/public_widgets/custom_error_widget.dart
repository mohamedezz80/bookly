
import 'package:bookly_app/core/utils/public_widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errorMessage});

  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return CustomText(
      text: errorMessage,
      fontSize: 18,
    );
  }
}
