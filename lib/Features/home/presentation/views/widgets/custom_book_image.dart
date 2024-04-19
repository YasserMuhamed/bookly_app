import 'package:flutter/material.dart';

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
                image: NetworkImage(
                    'https://img.freepik.com/free-vector/world-book-day-flat-background_23-2147784400.jpg?w=740&t=st=1713465987~exp=1713466587~hmac=3384652c927a684d99a91db8cef3a5ca574565797ae516196ed4c598bc44f797'))),
      ),
    );
  }
}
