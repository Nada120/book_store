import 'package:book_store/Features/home/presentation/views/home_view.dart';
import 'package:book_store/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../constants.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHomeView();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AssetsData.logo,
          height: 200,
          width: 200,
        ),
        const SizedBox(height: 5),
        AnimatedBuilder(
          animation: slidingAnimation,
          builder: (context, _) => SlideTransition(
            position: slidingAnimation,
            child: const Text(
              'BOOK STORE',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }

  void initSlidingAnimation() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 2),
      end: Offset.zero,
    ).animate(controller);
    controller.forward();
  }

  void navigateToHomeView() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(() => const HomeView(),
          transition: Transition.fade, duration: transitionDuration);
    });
  }
}
