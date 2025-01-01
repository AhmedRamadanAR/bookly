import 'package:flutter/cupertino.dart';

import 'custom_book_image.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) => const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: CustomBookImage())),
    );
  }
}
