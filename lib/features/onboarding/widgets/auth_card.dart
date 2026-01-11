import 'package:flutter/material.dart';
import 'package:my_digidrobe/features/onboarding/widgets/apple_button.dart';
import 'package:my_digidrobe/features/onboarding/widgets/auth_options.dart';
import 'package:my_digidrobe/features/onboarding/widgets/divider.dart';
import 'package:my_digidrobe/features/onboarding/widgets/legal_text.dart';

class AuthCard extends StatelessWidget {
  const AuthCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade200.withAlpha(153),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: const [
          AppleButton(),
          SizedBox(height: 16),
          OrDivider(),
          SizedBox(height: 16),
          AuthOptionsRow(),
          SizedBox(height: 16),
          LegalText(),
        ],
      ),
    );
  }
}
