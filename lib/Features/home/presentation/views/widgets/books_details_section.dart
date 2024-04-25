import 'package:bookly_app/Features/home/presentation/views/widgets/book_actions.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/rating_item.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height * .32,
            child: const CustomBookImage(
              urlImage:
                  "https://img.freepik.com/free-vector/world-book-day-flat-background_23-2147784400.jpg?w=740&t=st=1713465987~exp=1713466587~hmac=3384652c927a684d99a91db8cef3a5ca574565797ae516196ed4c598bc44f797",
            )),
        const SizedBox(
          height: 30,
        ),
        Text(
          'The Jungle Book',
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          'Rudyard Kipling',
          style:
              Styles.textStyle18.copyWith(color: Colors.white.withOpacity(.7)),
        ),
        const SizedBox(
          height: 15,
        ),
        const RatingItem(
          count: 555,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: BookActions(),
        ),
      ],
    );
  }
}
