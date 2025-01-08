
import 'package:flutter/cupertino.dart';

import '../../../../../core/utilis/styles.dart';
import 'book_rating.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.2),
            child: CustomBookImage(imageUrl: "",)),
        SizedBox(
          height: 5,
        ),
        Text(
          "The Jungle Book",
          style: Styles.textStyle30,
        ),
        SizedBox(
          height: 5,
        ),
        Opacity(
            opacity: 0.5,
            child: Text(
              "Ahmed Ramadan",
              style: Styles.textStyle20.copyWith(fontStyle: FontStyle.italic),
            )),
        SizedBox(
          height: 5,
        ),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}