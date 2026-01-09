import 'package:flutter/material.dart';

class ProfileShareButton extends StatelessWidget {
  const ProfileShareButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: const Text(
          "Profili Paylaş",
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
      ),
    );
  }
}
