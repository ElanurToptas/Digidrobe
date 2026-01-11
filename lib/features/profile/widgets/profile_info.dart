import 'package:flutter/material.dart';
import 'package:my_digidrobe/providers/user_provider.dart';
import 'package:provider/provider.dart';
import 'profile_edit_button.dart';
import 'profile_share_button.dart';

class ProfileInfo extends StatelessWidget {
  final VoidCallback onEditPressed;

  const ProfileInfo({super.key, required this.onEditPressed});

  @override
  Widget build(BuildContext context) {
     final userProvider = context.watch<UserProvider>();
    final user = userProvider.user;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          user?.name ?? "",
          style: const TextStyle(color: Colors.black),
        ),

        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(child: ProfileEditButton(onPressed: onEditPressed)),
            const SizedBox(width: 8),
            const Expanded(child: ProfileShareButton()),
          ],
        ),
      ],
    );
  }
}
