import 'package:bookly/core/utilis/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      this.textColor = Colors.black,
      this.buttonBackground = Colors.white,
      this.borderRadius,required this.buttonText });

  final textColor;
  final buttonBackground;
  final BorderRadius? borderRadius;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          style: TextButton.styleFrom(elevation: 20,
              backgroundColor: buttonBackground,
              shape: RoundedRectangleBorder(borderRadius: borderRadius ?? BorderRadius.horizontal(left: Radius.circular(16),right: Radius.circular(0)))),
          onPressed: () {},
          child: Text(
            buttonText,
            style: Styles.textStyle20
                .copyWith(color: textColor, fontWeight: FontWeight.w900),
          )),
    );
  }
}
