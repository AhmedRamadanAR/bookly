import 'package:bookly/core/utilis/app_router.dart';
import 'package:bookly/core/utilis/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Padding(padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 32),
        child: Row(
          children: [
            Image.asset(AssetsData.logo),
            const Spacer(),
            IconButton(
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.kSearchView);
                },
                icon: const Icon(
                  Icons.search,
                  size: 24,
                ))
          ],
        ),
      ),
    );
  }
}
