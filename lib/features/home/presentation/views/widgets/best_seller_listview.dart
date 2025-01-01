import 'package:bookly/features/home/presentation/views/widgets/best_seller_listview_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: 20,
    padding: EdgeInsets.zero,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index)
    {
      return Padding(padding:EdgeInsets.all(12),child: BestSellerListViewItem());
    });
  }
}
