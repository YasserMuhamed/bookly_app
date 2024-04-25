import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class RatingItem extends StatelessWidget {
  const RatingItem(
      {super.key,
      this.mainAxisAlignment = MainAxisAlignment.start,
      required this.count});

  final int count;

  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        // const Icon(
        //   FontAwesomeIcons.solidStar,
        //   size: 14,
        //   color: Color(0xFFFFDD4F),
        // ),
        const SizedBox(
          width: 6.3,
        ),
        const Text(
          "Pages",
          style: Styles.textStyle14,
        ),
        const SizedBox(
          width: 5,
        ),
        Text('(${count.toString()})',
            style: Styles.textStyle14
                .copyWith(color: Colors.white.withOpacity(.5)))
      ],
    );
  }
}
