import 'package:bookly_app/core/utils/public_widgets/custom_error_widget.dart';
import 'package:bookly_app/core/utils/public_widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'custom_book_image.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if(state is FeaturedBooksSuccess)
          {
            return SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: state.books.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: CustomBookImage(
                        imageUrl: state.books[index].volumeInfo.imageLinks!.thumbnail,
                      ),
                    );
                  }),
            );
          }
        else if(state is FeaturedBooksFailure)
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
