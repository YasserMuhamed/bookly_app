import 'package:bookly_app/Features/home/presentation/views/widgets/featured_list_item.dart';
import 'package:flutter/material.dart';

class FeaturedListItemBuilder extends StatelessWidget {
  const FeaturedListItemBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: Padding(
        padding: EdgeInsets.only(left: w * .07),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: ((context, index) => Padding(
                  padding: EdgeInsets.only(right: w * .035),
                  child: const FeaturedListItem(),
                ))),
      ),
    );
  }
}
