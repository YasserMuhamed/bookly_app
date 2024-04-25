import 'package:bookly_app/core/utils/widgets.dart';
import 'package:flutter/material.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomTextButton(
              onPressed: () {},
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15)),
              textColor: Colors.black,
              backgroundColor: Colors.white,
              labelText: 'Download'),
        ),
        Expanded(
          child: CustomTextButton(
              onPressed: () {},
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15)),
              textColor: Colors.white,
              backgroundColor: const Color(0xffEF8262),
              labelText: 'Free preview'),
        )
      ],
    );
  }
}
