import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 36,
      backgroundColor: Colors.green,
      child: Text(
        "E",
        style: TextStyle(fontSize: 32, color: Colors.white),
      ),
    );
  }
}
