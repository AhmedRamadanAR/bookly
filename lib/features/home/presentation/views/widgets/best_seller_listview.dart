import 'package:bookly/features/home/presentation/views/widgets/best_seller_listview_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../domain/entities/book_entity.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key, required this.booksList});

  final List<BookEntity> booksList;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (context, index) {
              var book=booksList[index];

              return Padding(
            padding: const EdgeInsets.all(12),
            child: BestSellerListViewItem(
              imageUrl: book.image,
              bookName: book.title,
              bookPrice: book.price,
              bookAuthor: book.authorName,
              bookRate: book.rate?.toString() ??" " ,
            ),
          );
        },
        childCount: booksList.length,
      ),
    );
  }
}