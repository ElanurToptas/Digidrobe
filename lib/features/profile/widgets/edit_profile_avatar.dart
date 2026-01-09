import 'package:flutter/material.dart';

class EditProfileAvatar extends StatelessWidget {
  const EditProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundColor: Colors.green,
              child: Text(
                "E",
                style: TextStyle(fontSize: 48, color: Colors.white),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.black,
                child: const Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        const Text(
          "Fotoğrafı değiştir",
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
