import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/manager/featured_books_cubit/featured_books_states.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedListViewBlocConsumer extends StatefulWidget {
  const FeaturedListViewBlocConsumer({super.key});

  @override
  State<FeaturedListViewBlocConsumer> createState() =>
      _FeaturedListViewBlocConsumerState();
}

class _FeaturedListViewBlocConsumerState
    extends State<FeaturedListViewBlocConsumer> {
  List<BookEntity> books = [];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeaturedBooksCubit, FeaturedBooksStates>(
        listener: (context, state) {
      if (state is FeaturedBooksSuccess) {
        books.addAll(state.books);
      }
      if (state is FeaturedBooksError) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Failed to load data. Please try again.'),
            duration: Duration(seconds: 3),
          ),
        );
      }
    }, builder: (context, state) {
      if (state is FeaturedBooksError) {
        return Text(state.errorMessage.toString());
      } else if (state is FeaturedBooksSuccess ||
          state is FeaturedBooksPaginationLoading ||
          state is FeaturedBooksPaginationError) {
        return BooksListView(booksList: books);
      } else {
        return CircularProgressIndicator();
      }
    });
  }
}
