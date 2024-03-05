
import 'package:flutter/material.dart';
import 'custom_book_image.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(right: 5),
              child: CustomBookImage(
                imageUrl: 'https://th.bing.com/th/id/R.70fe875f463f2ead03b599c5cbaaac5d?rik=e6DE9GxHERHQIA&pid=ImgRaw&r=0',
              ),
            );
          }
      ),
    );
  }
}