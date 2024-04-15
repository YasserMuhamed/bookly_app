import 'package:bookly_app/Features/home/presentation/views/widgets/featured_list_builder.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/home_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [HomeAppBar(), FeaturedListItemBuilder()],
    );
  }
}
