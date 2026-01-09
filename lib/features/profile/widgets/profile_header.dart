import 'package:flutter/material.dart';
import 'profile_avatar.dart';
import 'profile_info.dart';

class ProfileHeader extends StatelessWidget {
  final VoidCallback onEditPressed;

  const ProfileHeader({super.key, required this.onEditPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ProfileAvatar(),
          const SizedBox(width: 12),
          Expanded(
            child: ProfileInfo(onEditPressed: onEditPressed),
          ),
        ],
      ),
    );
  }
}
