import 'package:bookly/features/home/presentation/manager/newst_books_cubit/newest_books_cubit.dart';
import 'package:bookly/features/home/presentation/manager/newst_books_cubit/newst_books_states.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_listview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListViewBlocBuilder extends StatelessWidget {
  const BestSellerListViewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksStates>(
        builder: (context, state) {
      if (state is NewestBooksSuccess) {
        return BestSellerListView(booksList: state.books);
      } else if (state is NewestBooksError) {
        return Text(state.errorMessage.toString());
      } else {
        return SliverToBoxAdapter(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      }
    });
  }
}
