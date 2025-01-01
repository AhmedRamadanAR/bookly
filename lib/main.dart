import 'package:bookly/core/utilis/api_service.dart';
import 'package:bookly/core/utilis/app_router.dart';
import 'package:bookly/features/splash/presentation/views/splash_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ApiService.initDio();

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
