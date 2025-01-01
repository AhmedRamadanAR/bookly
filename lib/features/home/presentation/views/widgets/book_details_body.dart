import 'package:bookly/features/home/presentation/views/widgets/book_actions.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_books_listview.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../core/utilis/styles.dart';

import 'custom_book_image.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              BookDetailsAppBar(),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.2),
                  child: CustomBookImage()),
              SizedBox(
                height: 5,
              ),
              Text("The Jungle Book",style: Styles.textStyle30,),
              SizedBox(
                height: 5,
              ),
              Opacity(opacity:0.5,child: Text("Ahmed Ramadan",style: Styles.textStyle20.copyWith(fontStyle: FontStyle.italic),))
              ,
              SizedBox(height: 5,),
              BookRating(mainAxisAlignment: MainAxisAlignment.center
                ,),
              SizedBox(height: 15,),
      
              BookActions(),
              SizedBox(height: 30,),
              Align(alignment: Alignment.centerLeft,child: Text("You can Also Like",style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w400),)),
              SizedBox(height: 16,),
      
              SimilarBooksListView(),
              SizedBox(height: 40,),
            ],
          )),
    );
  }
}
