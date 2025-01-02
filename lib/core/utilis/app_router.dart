import 'package:bookly/features/home/presentation/views/home_screen.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details_view.dart';
import 'package:bookly/features/search/presentation/views/search_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/presentation/views/splash_screen.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kSearchView='/searchView';
  static const kBookDetailsView = '/bookDetailsView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashScreen(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => HomeScreen(),
      ),
      GoRoute(
          path: kBookDetailsView,
          builder: (context, state) => BookDetailsView())
    ,
      GoRoute(
          path: kSearchView,
          builder: (context, state) => SearchView())],
  );
}
