import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utilis/assets_data.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.test_bookcover_image)))),
    );
  }
}
