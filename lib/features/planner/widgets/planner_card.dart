import 'package:flutter/material.dart';
import 'planner_button.dart';

class PlannerCard extends StatelessWidget {
  const PlannerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade300, width: 1.5),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 168, 166, 166),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        children: [
          const Text(
            "Bugünün kıyafetini takip edin.\nYarının planını yapın.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              childAspectRatio: 1.6,
              children: const [
                PlannerButton(icon: Icons.checkroom, text: "Dolaptan ekle"),
                PlannerButton(icon: Icons.add, text: "Yeni kıyafet oluştur"),
                PlannerButton(icon: Icons.explore, text: "Yeni kıyafetler keşfedin"),
                PlannerButton(icon: Icons.camera_alt, text: "Kıyafet fotoğrafı ekle"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
