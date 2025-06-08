import 'package:doctor_hunt_app/core/utils/app_images.dart';
import 'package:doctor_hunt_app/features/onboarding/presentation/views/widgets/page_view_onboarding.dart';
import 'package:flutter/material.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({super.key});

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  late PageController pageController;
  int currentPageIndex = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(AppImages.backgroundOnboarding),
        ),
        PageViewOnboarding(
          pageController: pageController,
          currentPageIndex: currentPageIndex,
        ),
      ],
    );
  }
}
