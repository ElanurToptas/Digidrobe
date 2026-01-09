import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PaywallCloseButton extends StatelessWidget {
  const PaywallCloseButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      left: 10,
      child: IconButton(
        icon: const Icon(Icons.close, color: Colors.white, size: 28),
        onPressed: () {
          context.go('/home');
        },
      ),
    );
  }
}
