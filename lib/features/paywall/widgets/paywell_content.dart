import 'package:flutter/material.dart';
import 'package:my_digidrobe/features/paywall/widgets/continue_button.dart';
import 'package:my_digidrobe/features/paywall/widgets/plan_selector_row.dart';

class PaywallContent extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onSelect;

  const PaywallContent({
    super.key,
    required this.selectedIndex,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),

        const Text(
          "Digidrobe Pro",
          style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 8),

        const Text(
          "Sınırsız kıyafet oluşturma",
          style: TextStyle(color: Colors.white70, fontSize: 12),
        ),

        const SizedBox(height: 10),

        PlanSelectorRow(
          selectedIndex: selectedIndex,
          onSelect: onSelect,
        ),

        const SizedBox(height: 10),

        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.check_circle, color: Colors.green, size: 16),
            SizedBox(width: 8),
            Text(
              "Otomatik yenilenir, istediğin zaman iptal edebilirsin",
              style: TextStyle(color: Colors.white70, fontSize: 12),
            ),
          ],
        ),

        const SizedBox(height: 10),

        const ContinueButton(),

        const SizedBox(height: 20),

        const Text(
          "App Store ile güvence altında alındı",
          style: TextStyle(color: Colors.white54, fontSize: 12),
        ),

        const SizedBox(height: 12),

        const Text(
          "Kullanım Koşulları • Gizlilik Politikası • Satın Alma İşlemini Geri Yükle",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white38, fontSize: 12),
        ),

        const SizedBox(height: 20),
      ],
    );
  }
}
