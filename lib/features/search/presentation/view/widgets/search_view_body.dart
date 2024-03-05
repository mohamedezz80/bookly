
import 'package:bookly_app/core/utils/public_widgets/custom_text.dart';
import 'package:flutter/material.dart';
import '../../../../home/presentation/views/widgets/book_listview_item.dart';
import 'custom_search_textfeild.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        left: 30,
        right: 30,
        top: 20
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
          CustomSearchTextField(),
          SizedBox(height: 10),
          CustomText(
              text: 'Search Result',
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          SizedBox(height: 10),
          Expanded(
              child: SearchResultListView()),
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index){
        return const Padding(
          padding: EdgeInsets.only(
            top: 10,
            bottom: 10,
          ),
          child: BookListViewItem(),
        );
      },
    );
  }
}
