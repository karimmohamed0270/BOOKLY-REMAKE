import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SpalachViewBody extends StatefulWidget {
  const SpalachViewBody({super.key});

  @override
  State<SpalachViewBody> createState() => _SpalachViewBodyState();
}

class _SpalachViewBodyState extends State<SpalachViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation; // Typed as Animation<Offset>

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();

    // last step transation when i create the new Screen
    Future.delayed(const Duration(seconds: 2), () {
      GoRouter.of(context).push('/home');
    });
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    // Offset starts from down (y: 2) up to original position (0, 0)
    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 2),
      end: Offset.zero,
    ).animate(animationController);

    animationController.forward();
  }

  @override
  void dispose() {
    animationController
        .dispose(); // Always dispose controller to prevent memory leaks
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset('assets/images/logo.png'),
        const SizedBox(height: 16),

        SlideTransition(
          position: slidingAnimation,
          child: const Text(
            'Read Free Books',
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
