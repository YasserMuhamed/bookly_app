// import 'package:bookly_app/core/utils/assets.dart';
// import 'package:bookly_app/core/utils/router.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:go_router/go_router.dart';

// class CustomTextField extends StatelessWidget {
//   const CustomTextField({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       decoration: InputDecoration(
//           hintText: "Search",
//           suffixIcon: IconButton(
//             onPressed: () {
//               GoRouter.of(context).push(AppRouter.kSearchView);
//             },
//             icon: Opacity(
//               opacity: .8,
//               child: SvgPicture.asset(
//                 AssetsData.searchIcon,
//                 height: 22,
//               ),
//             ),
//           ),
//           enabledBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(12),
//               borderSide: const BorderSide(color: Colors.white)),
//           focusedBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(12),
//               borderSide: const BorderSide(color: Colors.white))),
//     );
//   }
// }
