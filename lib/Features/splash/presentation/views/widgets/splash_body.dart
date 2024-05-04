import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> with TickerProviderStateMixin {
  late Animation<Offset> slideTransition;
  late AnimationController animationController;

  //initializing values of animation_controller,slide_transition and navigate to home_page after time
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHomePage();
  }

  //disposing all controllers to save resources
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SvgPicture.asset(
          AssetsData.logo,
          width: .8 * w,
        ),
        SizedBox(
          height: h * .02,
        ),
        AnimatedText(slideTransition: slideTransition)
      ],
    );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    slideTransition = Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }

  void navigateToHomePage() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        GoRouter.of(context).pushReplacement(AppRouter.kHomeView);
      },
    );
  }
}

//animated text builder widget to rebuild animated text only
class AnimatedText extends StatelessWidget {
  const AnimatedText({
    super.key,
    required this.slideTransition,
  });

  final Animation<Offset> slideTransition;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slideTransition,
        builder: (context, _) {
          return SlideTransition(
            position: slideTransition,
            child: const Text(
              'Read Free Books',
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
