import 'package:hive/hive.dart';


part 'book_entity.g.dart';

@HiveType(typeId: 1)
class BookEntity {

  @HiveField(0)
  final String bookId;

  @HiveField(1)
  final String image;

  @HiveField(2)
  final String title;

  @HiveField(3)
  final String description;

  @HiveField(4)
  final String authorName;

  @HiveField(5)
  final num? price;

  @HiveField(6)
  final num? rate;

  BookEntity( {required this.bookId,required this.image, required this.title, required this.description, required this.authorName,
      required this.price, required this.rate});
}
