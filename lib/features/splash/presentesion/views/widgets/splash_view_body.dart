import 'package:bookly/core/constants/app_values.dart';
import 'package:bookly/core/utils/assets_data.dart';
import 'package:bookly/features/home/presention/views/home_view.dart';
import 'package:bookly/features/splash/presentesion/views/widgets/animated_sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAanimation;

  @override
  void initState() {
    super.initState();

    initSlidingAnimation();
    navigationToHome();
  }

  @override
  void dispose() {
    super.dispose();

    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        AnimatedSlidingText(slidingAanimation: slidingAanimation),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    slidingAanimation = Tween<Offset>(
      begin: Offset(0, 2),
      end: Offset.zero,
    ).animate(animationController);

    animationController.forward();
  }

  void navigationToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(
        () => HomeView(),
        transition: Transition.fade,
        duration: kTransitionDuration,
      );
    });
  }
}
