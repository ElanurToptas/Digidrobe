import 'package:flutter/material.dart';
import 'profile_edit_button.dart';
import 'profile_share_button.dart';

class ProfileInfo extends StatelessWidget {
  final VoidCallback onEditPressed;

  const ProfileInfo({super.key, required this.onEditPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Elanur Toptaş",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: ProfileEditButton(onPressed: onEditPressed),
            ),
            const SizedBox(width: 8),
            const Expanded(child: ProfileShareButton()),
          ],
        ),
      ],
    );
  }
}
