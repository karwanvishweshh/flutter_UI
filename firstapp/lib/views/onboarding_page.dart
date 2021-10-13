import 'package:firstapp/controllers/onboarding_controller.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  final controller = OnboardingConroller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemCount: controller.onboardingPages.length,
          itemBuilder: (context, index) {
            return Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(controller.onboardingPages[index].imageAsset),
                  SizedBox(height: 32),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 64.0),
                  ),
                  Text(
                    controller.onboardingPages[index].title,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 32),
                  Text(
                    controller.onboardingPages[index].description,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
