import 'package:bookly_app/core/utils/public_widgets/custom_error_widget.dart';
import 'package:bookly_app/core/utils/public_widgets/custom_loading_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../manager/newest_books_cubit/newest_books_cubit.dart';
import 'book_listview_item.dart';

class NewestListView extends StatelessWidget {
  const NewestListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if(state is NewestBooksSuccess)
          {
            return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    bottom: 7,
                    right: 30,
                    left: 20,
                  ),
                  child: BookListViewItem(
                    bookModel: state.books[index],
                  ),
                );
              },
            );
          }
        else if(state is NewestBooksFailure)
          {
            return CustomErrorWidget(errorMessage: state.errorMessage);
          }
        else{
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
