import 'package:flutter/material.dart';

class LegalText extends StatelessWidget {
  const LegalText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Devam ederek Gizlilik Politikamızı ve\n'
      'Hizmet Şartlarımızı kabul etmiş olursunuz.',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 10),
    );
  }
}
