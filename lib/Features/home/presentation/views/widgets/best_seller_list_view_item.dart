import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/rating_item.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/router.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: SizedBox(
          height: 130,
          child: Row(
            children: [
              const CustomBookImage(),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .5,
                      child: Text(
                        'Harry Potter and the Goblet of Fire',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: Styles.textStyle20
                            .copyWith(fontFamily: kGTSectraFine),
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      'J.K. Rowling',
                      style: Styles.textStyle14.copyWith(
                          color: Colors.white.withOpacity(.7),
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "19.99€",
                          style: Styles.textStyle20
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        const RatingItem()
                      ],
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
