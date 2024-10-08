import 'package:bookly_app/Features/search/manager/search_books_cubit/search_books_cubit.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            AssetsData.logo,
            height: h * .026,
          ),
          IconButton(
              onPressed: () {
                BlocProvider.of<SearchBooksCubit>(context)
                    .fetchSearchBooks(search: "all");
                GoRouter.of(context).push(
                  AppRouter.kSearchView,
                );
              },
              icon: SvgPicture.asset(
                AssetsData.searchIcon,
                height: h * .034,
              ))
        ],
      ),
    );
  }
}
