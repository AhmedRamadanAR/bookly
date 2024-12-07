class BookEntity {
  final String bookId;
  final String image;
  final String title;
  final String description;
  final String authorName;
  final num? price;
  final num? rate;

  BookEntity( {required this.bookId,required this.image, required this.title, required this.description, required this.authorName,
      required this.price, required this.rate});
}
