import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) => Padding(
                padding: EdgeInsets.only(right: w * .035),
                child: const CustomBookImage(
                  urlImage:
                      "https://img.freepik.com/free-vector/world-book-day-flat-background_23-2147784400.jpg?w=740&t=st=1713465987~exp=1713466587~hmac=3384652c927a684d99a91db8cef3a5ca574565797ae516196ed4c598bc44f797",
                ),
              ))),
    );
  }
}
