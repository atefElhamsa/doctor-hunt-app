import 'package:doctor_hunt_app/features/onboarding/data/models/onboarding_model.dart';
import 'package:doctor_hunt_app/features/onboarding/presentation/views/widgets/onboarding_widget.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class PageViewOnboarding extends StatelessWidget {
  const PageViewOnboarding({super.key, required this.pageController, required this.currentPageIndex});
  final PageController pageController;
  final int currentPageIndex;

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      children: List.generate(
        onboardingItems.length,
        (index) => OnboardingWidget(
          onboardingModel: onboardingItems[index],
          pageController: pageController,
          currentPageIndex: currentPageIndex,
        ),
      ),
    );
  }
}
