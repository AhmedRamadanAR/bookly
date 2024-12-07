import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:dio/dio.dart';

const baseUrl = "https://www.googleapis.com/books/v1/";

class ApiService {
  static Dio? dio;

  ApiService();

  static Dio? initDio() {
    if (dio == null) {
      dio = Dio(BaseOptions(baseUrl: baseUrl));

      return dio;
    } else {
      return dio;
    }
  }

  static Future<Response?>getBooksData({required String url})async{
   var response =await  dio?.get(url);
   return response;
  }
}
