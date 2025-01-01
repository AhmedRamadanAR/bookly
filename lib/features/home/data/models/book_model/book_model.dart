import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'book_model.g.dart';


@JsonSerializable()
class BookModel extends BookEntity {
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
  SearchInfo? searchInfo;

  BookModel({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  }) : super(
      bookId: id ?? '',
      image: volumeInfo?.imageLinks?.thumbnail ?? "",
      title: volumeInfo?.title ?? "",
      description: volumeInfo?.description ?? "",
      authorName: volumeInfo?.authors?.first ?? "",
      price: saleInfo?.listPrice?.amount,
      rate: volumeInfo?.averageRating);

  factory BookModel.fromJson(Map<String, dynamic> json) => _$BookModelFromJson(json);
}

@JsonSerializable()
class AccessInfo {
  String? country;
  String? viewability;
  bool? embeddable;
  bool? publicDomain;
  String? textToSpeechPermission;
  Epub? epub;
  Epub? pdf;
  String? webReaderLink;
  String? accessViewStatus;
  bool? quoteSharingAllowed;

  AccessInfo({
    this.country,
    this.viewability,
    this.embeddable,
    this.publicDomain,
    this.textToSpeechPermission,
    this.epub,
    this.pdf,
    this.webReaderLink,
    this.accessViewStatus,
    this.quoteSharingAllowed,
  });

  factory AccessInfo.fromJson(Map<String, dynamic> json) =>
      _$AccessInfoFromJson(json);
}


@JsonSerializable()
class Epub {
  bool? isAvailable;
  String? acsTokenLink;

  Epub({
    this.isAvailable,
    this.acsTokenLink,
  });

  factory Epub.fromJson(Map<String, dynamic> json) => _$EpubFromJson(json);
}

@JsonSerializable()
class SaleInfo {
  String? country;
  String? saleability;
  bool? isEbook;
  SaleInfoListPrice? listPrice;
  SaleInfoListPrice? retailPrice;
  String? buyLink;
  List<Offer>? offers;

  SaleInfo({
    this.country,
    this.saleability,
    this.isEbook,
    this.listPrice,
    this.retailPrice,
    this.buyLink,
    this.offers,
  });

  factory SaleInfo.fromJson(Map<String, dynamic> json) =>
      _$SaleInfoFromJson(json);
}

@JsonSerializable()
class SaleInfoListPrice {
  double? amount;
  String? currencyCode;

  SaleInfoListPrice({
    this.amount,
    this.currencyCode,
  });

  factory SaleInfoListPrice.fromJson(Map<String, dynamic> json) =>
      _$SaleInfoListPriceFromJson(json);
}

@JsonSerializable()
class Offer {
  int? finskyOfferType;
  OfferListPrice? listPrice;
  OfferListPrice? retailPrice;

  Offer({
    this.finskyOfferType,
    this.listPrice,
    this.retailPrice,
  });

  factory Offer.fromJson(Map<String, dynamic> json) => _$OfferFromJson(json);
}

@JsonSerializable()
class OfferListPrice {
  int? amountInMicros;
  String? currencyCode;

  OfferListPrice({
    this.amountInMicros,
    this.currencyCode,
  });

  factory OfferListPrice.fromJson(Map<String, dynamic> json) =>
      _$OfferListPriceFromJson(json);
}

@JsonSerializable()
class SearchInfo {
  String? textSnippet;

  SearchInfo({
    this.textSnippet,
  });

  factory SearchInfo.fromJson(Map<String, dynamic> json) =>
      _$SearchInfoFromJson(json);
}

@JsonSerializable()
class VolumeInfo {
  String? title;
  List<String>? authors;
  String? publisher;
  String? publishedDate;
  String? description;
  List<IndustryIdentifier>? industryIdentifiers;
  ReadingModes? readingModes;
  int? pageCount;
  String? printType;
  List<String>? categories;
  String? maturityRating;
  bool? allowAnonLogging;
  String? contentVersion;
  PanelizationSummary? panelizationSummary;
  ImageLinks? imageLinks;
  String? language;
  String? previewLink;
  String? infoLink;
  String? canonicalVolumeLink;
  double? averageRating;
  int? ratingsCount;

  VolumeInfo({
    this.title,
    this.authors,
    this.publisher,
    this.publishedDate,
    this.description,
    this.industryIdentifiers,
    this.readingModes,
    this.pageCount,
    this.printType,
    this.categories,
    this.maturityRating,
    this.allowAnonLogging,
    this.contentVersion,
    this.panelizationSummary,
    this.imageLinks,
    this.language,
    this.previewLink,
    this.infoLink,
    this.canonicalVolumeLink,
    this.averageRating,
    this.ratingsCount,
  });

  factory VolumeInfo.fromJson(Map<String, dynamic> json) =>
      _$VolumeInfoFromJson(json);
}

@JsonSerializable()
class ImageLinks {
  String? smallThumbnail;
  String? thumbnail;

  ImageLinks({
    this.smallThumbnail,
    this.thumbnail,
  });

  factory ImageLinks.fromJson(Map<String, dynamic> json) =>
      _$ImageLinksFromJson(json);
}

@JsonSerializable()
class IndustryIdentifier {
  String? type;
  String? identifier;

  IndustryIdentifier({
    this.type,
    this.identifier,
  });

  factory IndustryIdentifier.fromJson(Map<String, dynamic> json) =>
      _$IndustryIdentifierFromJson(json);
}

@JsonSerializable()
class PanelizationSummary {
  bool? containsEpubBubbles;
  bool? containsImageBubbles;

  PanelizationSummary({
    this.containsEpubBubbles,
    this.containsImageBubbles,
  });

  factory PanelizationSummary.fromJson(Map<String, dynamic> json) =>
      _$PanelizationSummaryFromJson(json);
}

@JsonSerializable()
class ReadingModes {
  bool? text;
  bool? image;

  ReadingModes({
    this.text,
    this.image,
  });

  factory ReadingModes.fromJson(Map<String, dynamic> json) =>
      _$ReadingModesFromJson(json);
}

