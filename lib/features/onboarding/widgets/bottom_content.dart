import 'package:flutter/material.dart';
import 'package:my_digidrobe/features/onboarding/widgets/auth_card.dart';
import 'package:my_digidrobe/features/onboarding/widgets/onboarding_title.dart';

class OnboardingBottomContent extends StatelessWidget {
  const OnboardingBottomContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
        ),
        child: SafeArea(
          top: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              OnboardingTitle(),
              SizedBox(height: 20),
              AuthCard(),
            ],
          ),
        ),
      ),
    );
  }
}
