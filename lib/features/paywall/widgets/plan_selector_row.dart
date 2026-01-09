import 'package:flutter/material.dart';
import "plan_card.dart";

class PlanSelectorRow extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onSelect;

  const PlanSelectorRow({
    super.key,
    required this.selectedIndex,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        PlanCard(
          title: "Haftalık",
          price: "₺229,99",
          tag: "✨ Popüler",
          selected: selectedIndex == 0,
          onTap: () => onSelect(0),
        ),
        const SizedBox(width: 12),
        PlanCard(
          title: "Yıllık",
          price: "₺2.299,99",
          tag: "🔥 En iyi değer",
          sub: "Yalnızca TL44,23 / hafta",
          selected: selectedIndex == 1,
          onTap: () => onSelect(1),
        ),
        const SizedBox(width: 12),
        PlanCard(
          title: "Aylık",
          price: "₺449,99",
          tag: "💎 En popüler",
          selected: selectedIndex == 2,
          onTap: () => onSelect(2),
        ),
      ],
    );
  }
}
