import 'package:flutter/material.dart';

class PaywallOverlay extends StatelessWidget {
  const PaywallOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.black.withAlpha(128));
  }
}
