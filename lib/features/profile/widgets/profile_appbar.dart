import 'package:flutter/material.dart';
import 'package:my_digidrobe/providers/user_provider.dart';
import 'package:provider/provider.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final userProvider = context.watch<UserProvider>();
    final user = userProvider.user;
    return AppBar(
      title: Text(
        user?.name ?? "",
        style: const TextStyle(color: Colors.black),
      ),

      backgroundColor: Colors.white,
      actions: const [
        Padding(padding: EdgeInsets.only(right: 12), child: Icon(Icons.menu)),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
