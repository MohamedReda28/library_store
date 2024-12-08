import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project/core/utils/app_Router.dart';
import 'package:project/core/utils/assets.dart';
import 'package:project/feature/Splash/presentation/view/widets/slid_text_animation.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> textanimated;
  @override
  void initState() {
    super.initState();
    slidingAnimation();
    navigatTOhomePage();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(
          height: 5,
        ),
        SlidingTextAnimation(textanimated: textanimated)
      ],
    );
  }

  void slidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    textanimated = Tween<Offset>(begin: Offset(0, 3), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
    textanimated.addListener(() => setState(() {}));
  }

  void navigatTOhomePage() {
    Future.delayed(Duration(seconds: 2), () {
      GoRouter.of(context).push(AppRouter.KhomeView);
    });
  }
}
