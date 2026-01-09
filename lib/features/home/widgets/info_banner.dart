import 'package:flutter/material.dart';

class InfoBanner extends StatelessWidget {
  const InfoBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            const Icon(Icons.error_outline, color: Colors.red),
            const SizedBox(width: 12),
            const Expanded(
              child: Text(
                "Hava durumu verileri kullanılamıyor",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Icon(Icons.refresh, color: Colors.grey.shade600),
          ],
        ),
      ),
    );
  }
}
