import 'package:bookly/features/home/presentation/views/widgets/books_list_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utilis/styles.dart';
import 'best_seller_listview.dart';
import 'featured_list_view_bloc_builder.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [SliverToBoxAdapter(child:   Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomAppBar(),

        FeaturedListViewBlocBuilder(),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.all(18),
          child: Text(
            'Best Seller',
            style: Styles.textStyle20,
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],

    ),),
      SliverFillRemaining(child:        BestSellerListView()
      ,)],);


  }
}
