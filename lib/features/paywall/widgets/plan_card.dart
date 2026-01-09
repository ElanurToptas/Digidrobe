import 'package:flutter/material.dart';

class PlanCard extends StatelessWidget {
  final String title;
  final String price;
  final String tag;
  final String? sub;
  final bool selected;
  final VoidCallback onTap;
  const PlanCard({
    super.key,
    required this.title,
    required this.price,
    required this.tag,
    this.sub,
    required this.selected,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 110,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: selected ? Colors.pink : Colors.white24,
            width: selected ? 2 : 1,
          ),
          color: Colors.black.withAlpha(102),
        ),
        child: Column(
          children: [
            Text(tag, style: const TextStyle(color: Colors.pink, fontSize: 10)),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 14),
            ),
            const SizedBox(height: 6),
            Text(
              price,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
            if (sub != null) ...[
              const SizedBox(height: 6),
              Text(
                sub!,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white70, fontSize: 8),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
