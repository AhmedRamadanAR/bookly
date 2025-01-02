
import 'package:bookly/features/home/presentation/views/widgets/similar_books_listview.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../core/utilis/styles.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "You can Also Like",
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: 16,
        ),
        SimilarBooksListView(),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
