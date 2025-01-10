import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:flutter/cupertino.dart';

import 'custom_book_image.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key, required this.booksList});
final List<BookEntity>booksList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: booksList.length,
          itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: CustomBookImage(imageUrl: booksList[index].image,))),
    );
  }
}
