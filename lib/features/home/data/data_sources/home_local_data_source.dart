import 'package:bookly/constants.dart';
import 'package:hive/hive.dart';

import '../../domain/entities/book_entity.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchFeaturedBooks({int pageNumber=0});
  List<BookEntity> fetchNewsBooks();
}


class HomeLocalDataSourceImpl extends HomeLocalDataSource {
 
  @override
  List<BookEntity> fetchFeaturedBooks({int pageNumber=0}) {
   
    int startIndex=pageNumber*10;
    int endIndex=(pageNumber+1)*10;
   
    var box = Hive.box<BookEntity>(kFeaturedBox);
    int boxLength=box.values.length;
    if(startIndex>=boxLength||endIndex>boxLength){
      return [];
    }
    return box.values.toList().sublist(startIndex,endIndex);

  }

  @override
  List<BookEntity> fetchNewsBooks() {
    var box = Hive.box<BookEntity>(kNewestBox);
    return box.values.toList();
  }
}
