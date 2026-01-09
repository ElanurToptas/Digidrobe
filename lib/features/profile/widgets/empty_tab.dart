import 'package:flutter/material.dart';

class EmptyTab extends StatelessWidget {
  const EmptyTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Henüz yok",
        style: TextStyle(fontSize: 18, color: Colors.grey),
      ),
    );
  }
}
