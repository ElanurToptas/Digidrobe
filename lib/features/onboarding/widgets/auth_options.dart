import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthOptionsRow extends StatelessWidget {
  const AuthOptionsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: OutlinedButton.icon(
            onPressed: () => context.go('/onboarding2'),
            icon: Image.asset('assets/icons/google.png', height: 20),
            label: const Text('Google' , style: TextStyle(color: Colors.black),),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: OutlinedButton.icon(
            onPressed: () => context.go('/onboarding2'),
            icon: const Icon(Icons.person_outline, color: Colors.black),
            label: const Text('Misafir', style: TextStyle(color: Colors.black),),
          ),
        ),
      ],
    );
  }
}
