import 'package:bookly/core/utilis/api_service.dart';
import 'package:bookly/core/utilis/app_router.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';

import 'constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ApiService.initDio();
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter()); //
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const Bookly(), // Wrap your app
    ),
  );
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: primaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
  routerConfig: AppRouter.router,
    );
  }
}
