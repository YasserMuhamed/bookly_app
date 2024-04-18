import 'package:flutter/material.dart';

class FeaturedListItem extends StatelessWidget {
  const FeaturedListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    'https://www.shutterstock.com/image-photo/business-woman-drawing-global-structure-260nw-1006041130.jpg'))),
      ),
    );
  }
}
