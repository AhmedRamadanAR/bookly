import 'package:bookly/core/utilis/api_service.dart';
import 'package:bookly/core/utilis/app_router.dart';
import 'package:bookly/core/utilis/simple_bloc_observer.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/use_cases/fetch_featured_books_use_case.dart';
import 'package:bookly/features/home/domain/use_cases/fetch_new_books_use_case.dart';
import 'package:bookly/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/manager/newst_books_cubit/newest_books_cubit.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';

import 'constants.dart';
import 'core/utilis/functions/setup_service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await apiInitializer();
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox<BookEntity>(kFeaturedBox);
  await Hive.openBox<BookEntity>(kNewestBox);
  setUpServiceLocator();
  Bloc.observer=SimpleBlocObserver();


  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const Bookly(),
    ),
  );
}

Future<void> apiInitializer() async {
  ApiService.initDio();
}

// Future<void> hiveInitializer() async {
//
//
// }


class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => FeaturedBooksCubit(FetchFeaturedBooksUseCase(
                homeRepo: getIt.get<HomeRepoImpl>()))..fetchFeaturedBooks()),
        BlocProvider(
            create: (context) => NewestBooksCubit(
                FetchNewBooksUseCase(homeRepo: getIt.get<HomeRepoImpl>()))..fetchNewestBooks())
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: primaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
        routerConfig: AppRouter.router,
      ),
    );
  }
}
