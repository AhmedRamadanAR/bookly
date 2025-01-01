import 'package:bookly/features/home/presentation/views/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomButton(buttonText: "\$99",)),
        Expanded(
          child: CustomButton(buttonText:"Free Preview",textColor: Colors.white,
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(0),
              right: Radius.circular(16),
            ),
         buttonBackground: Color(0xffEF8262), ),
        )
      ],
    );
  }
}
