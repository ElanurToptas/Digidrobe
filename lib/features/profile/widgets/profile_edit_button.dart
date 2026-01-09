import 'package:flutter/material.dart';

class ProfileEditButton extends StatelessWidget {
  final VoidCallback onPressed;

  const ProfileEditButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: Colors.black),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: const Text(
          "Profili Düzenle",
          style: TextStyle(color: Colors.black, fontSize: 12),
        ),
      ),
    );
  }
}
