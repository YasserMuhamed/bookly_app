import 'package:bookly_app/Features/search/manager/search_books_cubit/search_books_cubit.dart';
import 'package:bookly_app/Features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    String? search;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  onChanged: (value) {
                    search = value;
                    BlocProvider.of<SearchBooksCubit>(context)
                        .fetchSearchBooks(search: search ?? "all");
                  },
                  onSubmitted: (value) {
                    search = value;
                    BlocProvider.of<SearchBooksCubit>(context)
                        .fetchSearchBooks(search: search ?? "all");
                  },
                  decoration: InputDecoration(
                      hintText: "Search",
                      suffixIcon: IconButton(
                        onPressed: () {
                          BlocProvider.of<SearchBooksCubit>(context)
                              .fetchSearchBooks(search: search ?? "all");
                        },
                        icon: Opacity(
                          opacity: .8,
                          child: SvgPicture.asset(
                            AssetsData.searchIcon,
                            height: 22,
                          ),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.white)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.white))),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Search Result',
                  style: Styles.textStyle18,
                ),
                const SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
        ),
        const Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: SearchResultListView(),
          ),
        )
      ],
    );
  }
}
