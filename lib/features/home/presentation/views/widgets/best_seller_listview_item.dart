import 'package:bookly/core/utilis/app_router.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utilis/styles.dart';
import 'book_rating.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem(
      {super.key,
      required this.imageUrl,
      required this.bookName,
      required this.bookPrice,
      required this.bookAuthor,required this.bookRate});

  final String imageUrl;
  final String bookName;
  final String bookAuthor;
  final num? bookPrice;
  final String? bookRate;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: CachedNetworkImage(
                    imageUrl: imageUrl,
                    fit: BoxFit.fill,
                  )),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      bookName,
                      style: Styles.textStyle20,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    bookAuthor,
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Container(
                      child: Row(
                    children: [
                      Text(
                        " ${bookPrice != null ? '\$ $bookPrice' : "Free"}",
                        // Corrected line
                        style: Styles.textStyle20,
                      ),
                      Spacer(),
                      BookRating(bookRate:bookRate)
                    ],
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
