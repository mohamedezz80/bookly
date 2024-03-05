
import 'package:flutter/cupertino.dart';
import 'book_listview_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
        itemBuilder: (context, index){
          return const Padding(
            padding: EdgeInsets.only(
              top: 10,
              bottom: 10,
              right: 30,
              left: 20,
            ),
            child: BookListViewItem(),
          );
        },
    );
  }
}
