import 'package:bookly/core/utilis/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key,
      this.mainAxisAlignment = MainAxisAlignment.start,
      required this.bookRate});

  final mainAxisAlignment;
  final String? bookRate;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        if (bookRate !=" ")
          Icon(
            Icons.star_rate,
            color: Colors.yellow,
          ),
        Text(
          bookRate ?? " ",
          style: Styles.textStyle18,
        ),
        SizedBox(
          width: 4,
        ),
        Opacity(opacity: 0.5, child: Text("(5003)", style: Styles.textStyle18))
      ],
    );
  }
}
