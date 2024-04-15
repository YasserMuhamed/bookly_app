import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(
          left: w * .07, right: w * .07, top: h * .05, bottom: h * .03),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            AssetsData.logo,
            height: h * .026,
          ),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                AssetsData.searchIcon,
                height: h * .034,
              ))
        ],
      ),
    );
  }
}
