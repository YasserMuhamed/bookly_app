import 'package:bookly_app/Features/home/presentation/views/widgets/details_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/rating_item.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          const DetailsViewAppBar(),
          const SizedBox(
            height: 35,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .32,
            child: AspectRatio(
              aspectRatio: 2.6 / 4,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            'https://img.freepik.com/free-vector/world-book-day-flat-background_23-2147784400.jpg?w=740&t=st=1713465987~exp=1713466587~hmac=3384652c927a684d99a91db8cef3a5ca574565797ae516196ed4c598bc44f797'))),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'The Jungle Book',
            style: Styles.textStyle30,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(color: const Color(0xff707070)),
          ),
          const SizedBox(
            height: 15,
          ),
          RatingItem()
        ],
      ),
    );
  }
}
