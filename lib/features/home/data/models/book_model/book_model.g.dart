// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookModel _$BookModelFromJson(Map<String, dynamic> json) => BookModel(
      kind: json['kind'] as String,
      totalItems: (json['totalItems'] as num).toInt(),
      items: (json['items'] as List<dynamic>)
          .map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BookModelToJson(BookModel instance) => <String, dynamic>{
      'kind': instance.kind,
      'totalItems': instance.totalItems,
      'items': instance.items,
    };

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      kind: $enumDecode(_$KindEnumMap, json['kind']),
      id: json['id'] as String,
      etag: json['etag'] as String,
      selfLink: json['selfLink'] as String,
      volumeInfo:
          VolumeInfo.fromJson(json['volumeInfo'] as Map<String, dynamic>),
      saleInfo: SaleInfo.fromJson(json['saleInfo'] as Map<String, dynamic>),
      accessInfo:
          AccessInfo.fromJson(json['accessInfo'] as Map<String, dynamic>),
      searchInfo:
          SearchInfo.fromJson(json['searchInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'kind': _$KindEnumMap[instance.kind]!,
      'id': instance.id,
      'etag': instance.etag,
      'selfLink': instance.selfLink,
      'volumeInfo': instance.volumeInfo,
      'saleInfo': instance.saleInfo,
      'accessInfo': instance.accessInfo,
      'searchInfo': instance.searchInfo,
    };

const _$KindEnumMap = {
  Kind.BOOKS_VOLUME: 'BOOKS_VOLUME',
};

AccessInfo _$AccessInfoFromJson(Map<String, dynamic> json) => AccessInfo(
      country: $enumDecode(_$CountryEnumMap, json['country']),
      viewability: $enumDecode(_$ViewabilityEnumMap, json['viewability']),
      embeddable: json['embeddable'] as bool,
      publicDomain: json['publicDomain'] as bool,
      textToSpeechPermission: $enumDecode(
          _$TextToSpeechPermissionEnumMap, json['textToSpeechPermission']),
      epub: Epub.fromJson(json['epub'] as Map<String, dynamic>),
      pdf: Epub.fromJson(json['pdf'] as Map<String, dynamic>),
      webReaderLink: json['webReaderLink'] as String,
      accessViewStatus:
          $enumDecode(_$AccessViewStatusEnumMap, json['accessViewStatus']),
      quoteSharingAllowed: json['quoteSharingAllowed'] as bool,
    );

Map<String, dynamic> _$AccessInfoToJson(AccessInfo instance) =>
    <String, dynamic>{
      'country': _$CountryEnumMap[instance.country]!,
      'viewability': _$ViewabilityEnumMap[instance.viewability]!,
      'embeddable': instance.embeddable,
      'publicDomain': instance.publicDomain,
      'textToSpeechPermission':
          _$TextToSpeechPermissionEnumMap[instance.textToSpeechPermission]!,
      'epub': instance.epub,
      'pdf': instance.pdf,
      'webReaderLink': instance.webReaderLink,
      'accessViewStatus': _$AccessViewStatusEnumMap[instance.accessViewStatus]!,
      'quoteSharingAllowed': instance.quoteSharingAllowed,
    };

const _$CountryEnumMap = {
  Country.EG: 'EG',
};

const _$ViewabilityEnumMap = {
  Viewability.NO_PAGES: 'NO_PAGES',
  Viewability.PARTIAL: 'PARTIAL',
};

const _$TextToSpeechPermissionEnumMap = {
  TextToSpeechPermission.ALLOWED: 'ALLOWED',
  TextToSpeechPermission.ALLOWED_FOR_ACCESSIBILITY: 'ALLOWED_FOR_ACCESSIBILITY',
};

const _$AccessViewStatusEnumMap = {
  AccessViewStatus.NONE: 'NONE',
  AccessViewStatus.SAMPLE: 'SAMPLE',
};

Epub _$EpubFromJson(Map<String, dynamic> json) => Epub(
      isAvailable: json['isAvailable'] as bool,
      acsTokenLink: json['acsTokenLink'] as String?,
    );

Map<String, dynamic> _$EpubToJson(Epub instance) => <String, dynamic>{
      'isAvailable': instance.isAvailable,
      'acsTokenLink': instance.acsTokenLink,
    };

SaleInfo _$SaleInfoFromJson(Map<String, dynamic> json) => SaleInfo(
      country: $enumDecode(_$CountryEnumMap, json['country']),
      saleability: $enumDecode(_$SaleabilityEnumMap, json['saleability']),
      isEbook: json['isEbook'] as bool,
      listPrice: json['listPrice'] == null
          ? null
          : SaleInfoListPrice.fromJson(
              json['listPrice'] as Map<String, dynamic>),
      retailPrice: json['retailPrice'] == null
          ? null
          : SaleInfoListPrice.fromJson(
              json['retailPrice'] as Map<String, dynamic>),
      buyLink: json['buyLink'] as String?,
      offers: (json['offers'] as List<dynamic>?)
          ?.map((e) => Offer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SaleInfoToJson(SaleInfo instance) => <String, dynamic>{
      'country': _$CountryEnumMap[instance.country]!,
      'saleability': _$SaleabilityEnumMap[instance.saleability]!,
      'isEbook': instance.isEbook,
      'listPrice': instance.listPrice,
      'retailPrice': instance.retailPrice,
      'buyLink': instance.buyLink,
      'offers': instance.offers,
    };

const _$SaleabilityEnumMap = {
  Saleability.FOR_SALE: 'FOR_SALE',
  Saleability.NOT_FOR_SALE: 'NOT_FOR_SALE',
};

SaleInfoListPrice _$SaleInfoListPriceFromJson(Map<String, dynamic> json) =>
    SaleInfoListPrice(
      amount: (json['amount'] as num).toDouble(),
      currencyCode: json['currencyCode'] as String,
    );

Map<String, dynamic> _$SaleInfoListPriceToJson(SaleInfoListPrice instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currencyCode': instance.currencyCode,
    };

Offer _$OfferFromJson(Map<String, dynamic> json) => Offer(
      finskyOfferType: (json['finskyOfferType'] as num).toInt(),
      listPrice:
          OfferListPrice.fromJson(json['listPrice'] as Map<String, dynamic>),
      retailPrice:
          OfferListPrice.fromJson(json['retailPrice'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OfferToJson(Offer instance) => <String, dynamic>{
      'finskyOfferType': instance.finskyOfferType,
      'listPrice': instance.listPrice,
      'retailPrice': instance.retailPrice,
    };

OfferListPrice _$OfferListPriceFromJson(Map<String, dynamic> json) =>
    OfferListPrice(
      amountInMicros: (json['amountInMicros'] as num).toInt(),
      currencyCode: json['currencyCode'] as String,
    );

Map<String, dynamic> _$OfferListPriceToJson(OfferListPrice instance) =>
    <String, dynamic>{
      'amountInMicros': instance.amountInMicros,
      'currencyCode': instance.currencyCode,
    };

SearchInfo _$SearchInfoFromJson(Map<String, dynamic> json) => SearchInfo(
      textSnippet: json['textSnippet'] as String,
    );

Map<String, dynamic> _$SearchInfoToJson(SearchInfo instance) =>
    <String, dynamic>{
      'textSnippet': instance.textSnippet,
    };

VolumeInfo _$VolumeInfoFromJson(Map<String, dynamic> json) => VolumeInfo(
      title: json['title'] as String,
      authors:
          (json['authors'] as List<dynamic>).map((e) => e as String).toList(),
      publisher: json['publisher'] as String?,
      publishedDate: json['publishedDate'] as String,
      description: json['description'] as String,
      industryIdentifiers: (json['industryIdentifiers'] as List<dynamic>)
          .map((e) => IndustryIdentifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      readingModes:
          ReadingModes.fromJson(json['readingModes'] as Map<String, dynamic>),
      pageCount: (json['pageCount'] as num).toInt(),
      printType: $enumDecode(_$PrintTypeEnumMap, json['printType']),
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      maturityRating:
          $enumDecode(_$MaturityRatingEnumMap, json['maturityRating']),
      allowAnonLogging: json['allowAnonLogging'] as bool,
      contentVersion: json['contentVersion'] as String,
      panelizationSummary: PanelizationSummary.fromJson(
          json['panelizationSummary'] as Map<String, dynamic>),
      imageLinks:
          ImageLinks.fromJson(json['imageLinks'] as Map<String, dynamic>),
      language: $enumDecode(_$LanguageEnumMap, json['language']),
      previewLink: json['previewLink'] as String,
      infoLink: json['infoLink'] as String,
      canonicalVolumeLink: json['canonicalVolumeLink'] as String,
      averageRating: (json['averageRating'] as num?)?.toDouble(),
      ratingsCount: (json['ratingsCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$VolumeInfoToJson(VolumeInfo instance) =>
    <String, dynamic>{
      'title': instance.title,
      'authors': instance.authors,
      'publisher': instance.publisher,
      'publishedDate': instance.publishedDate,
      'description': instance.description,
      'industryIdentifiers': instance.industryIdentifiers,
      'readingModes': instance.readingModes,
      'pageCount': instance.pageCount,
      'printType': _$PrintTypeEnumMap[instance.printType]!,
      'categories': instance.categories,
      'maturityRating': _$MaturityRatingEnumMap[instance.maturityRating]!,
      'allowAnonLogging': instance.allowAnonLogging,
      'contentVersion': instance.contentVersion,
      'panelizationSummary': instance.panelizationSummary,
      'imageLinks': instance.imageLinks,
      'language': _$LanguageEnumMap[instance.language]!,
      'previewLink': instance.previewLink,
      'infoLink': instance.infoLink,
      'canonicalVolumeLink': instance.canonicalVolumeLink,
      'averageRating': instance.averageRating,
      'ratingsCount': instance.ratingsCount,
    };

const _$PrintTypeEnumMap = {
  PrintType.BOOK: 'BOOK',
};

const _$MaturityRatingEnumMap = {
  MaturityRating.NOT_MATURE: 'NOT_MATURE',
};

const _$LanguageEnumMap = {
  Language.EN: 'EN',
};

ImageLinks _$ImageLinksFromJson(Map<String, dynamic> json) => ImageLinks(
      smallThumbnail: json['smallThumbnail'] as String,
      thumbnail: json['thumbnail'] as String,
    );

Map<String, dynamic> _$ImageLinksToJson(ImageLinks instance) =>
    <String, dynamic>{
      'smallThumbnail': instance.smallThumbnail,
      'thumbnail': instance.thumbnail,
    };

IndustryIdentifier _$IndustryIdentifierFromJson(Map<String, dynamic> json) =>
    IndustryIdentifier(
      type: $enumDecode(_$TypeEnumMap, json['type']),
      identifier: json['identifier'] as String,
    );

Map<String, dynamic> _$IndustryIdentifierToJson(IndustryIdentifier instance) =>
    <String, dynamic>{
      'type': _$TypeEnumMap[instance.type]!,
      'identifier': instance.identifier,
    };

const _$TypeEnumMap = {
  Type.ISBN_10: 'ISBN_10',
  Type.ISBN_13: 'ISBN_13',
  Type.OTHER: 'OTHER',
};

PanelizationSummary _$PanelizationSummaryFromJson(Map<String, dynamic> json) =>
    PanelizationSummary(
      containsEpubBubbles: json['containsEpubBubbles'] as bool,
      containsImageBubbles: json['containsImageBubbles'] as bool,
    );

Map<String, dynamic> _$PanelizationSummaryToJson(
        PanelizationSummary instance) =>
    <String, dynamic>{
      'containsEpubBubbles': instance.containsEpubBubbles,
      'containsImageBubbles': instance.containsImageBubbles,
    };

ReadingModes _$ReadingModesFromJson(Map<String, dynamic> json) => ReadingModes(
      text: json['text'] as bool,
      image: json['image'] as bool,
    );

Map<String, dynamic> _$ReadingModesToJson(ReadingModes instance) =>
    <String, dynamic>{
      'text': instance.text,
      'image': instance.image,
    };
