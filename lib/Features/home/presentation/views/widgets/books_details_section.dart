import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_actions.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/rating_item.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height * .32,
            child: CustomBookImage(
              urlImage: bookModel.volumeInfo.imageLinks.thumbnail,
            )),
        const SizedBox(
          height: 30,
        ),
        Text(
          bookModel.volumeInfo.title.toString(),
          textAlign: TextAlign.center,
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          bookModel.volumeInfo.authors?[0] ?? "No Author",
          style:
              Styles.textStyle18.copyWith(color: Colors.white.withOpacity(.7)),
        ),
        const SizedBox(
          height: 15,
        ),
        RatingItem(
          count: bookModel.volumeInfo.pageCount ?? 0,
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
