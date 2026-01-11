import 'package:flutter/material.dart';

class OnboardingProgress extends StatelessWidget {
  final bool nameFilled;
  final bool dateFilled;
  final bool genderFilled;

  const OnboardingProgress({
    super.key,
    required this.nameFilled,
    required this.dateFilled,
    required this.genderFilled,
  });

  @override
  Widget build(BuildContext context) {
    final progress =
        ((nameFilled ? 1 : 0) + (dateFilled ? 1 : 0) + (genderFilled ? 1 : 0)) /
            3;

    return LinearProgressIndicator(
      value: progress,
      backgroundColor: Colors.grey.shade300,
      valueColor: const AlwaysStoppedAnimation<Color>(Colors.black),
      minHeight: 4,
      borderRadius: BorderRadius.circular(4),
    );
  }
}
