import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_list_view_builder.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/featured_list_builder.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/home_app_bar.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: HomeAppBar(),
              ),
              FeaturedListItemBuilder(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      'Best Seller',
                      style: Styles.textStyle18,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              )
            ],
          ),
        ),
        SliverFillRemaining(
          child: BestSellerListViewBuilder(),
        )
      ],
    );
  }
}
