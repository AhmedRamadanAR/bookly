import 'package:flutter/cupertino.dart';

import 'custom_book_image.dart';

class SimilarBooksListView extends StatelessWidget{
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.14,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) => const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: CustomBookImage())),
    );
  }

}