import 'package:bookly/features/home/presentation/views/widgets/book_list_item.dart';
import 'package:flutter/cupertino.dart';

class booksListView extends StatelessWidget {
  const booksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) => const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: bookListItem())),
    );
  }
}
