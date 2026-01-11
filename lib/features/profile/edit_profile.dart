import 'package:flutter/material.dart';
import 'package:my_digidrobe/providers/user_provider.dart';
import 'package:provider/provider.dart';
import 'widgets/edit_profile_avatar.dart';
import 'widgets/edit_profile_item.dart';
import 'widgets/edit_profile_bottomsheet.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final userProvider = context.watch<UserProvider>();
    final user = userProvider.user;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Profili Düzenle",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const EditProfileAvatar(),
            const SizedBox(height: 24),

            EditProfileItem(
              title: "Kullanıcı adı",
              value: user?.name ?? "",
              onTap: () {
                showEditProfileBottomSheet(
                  context: context,
                  title: "Kullanıcı adı",
                  currentValue: user?.name ?? "",
                  onSave: (newValue) {
                    userProvider.updateUser(name: newValue);
                  },
                );
              },
            ),

            EditProfileItem(
              title: "Cinsiyet",
              value: user?.gen ?? "",
              onTap: () {
                showEditProfileBottomSheet(
                  context: context,
                  title: "Cinsiyet",
                  currentValue: user?.gen ?? "",
                  onSave: (newValue) {
                    userProvider.updateUser(gen: newValue);
                  },
                );
              },
            ),

            EditProfileItem(
              title: "Doğum Tarihi",
              value: user == null
                  ? ""
                  : "${user.date.day}.${user.date.month}.${user.date.year}",
              onTap: () async {
                final picked = await showDatePicker(
                  context: context,
                  initialDate: user?.date ?? DateTime(2000),
                  firstDate: DateTime(1950),
                  lastDate: DateTime.now(),
                );

                if (picked != null) {
                  userProvider.updateUser(date: picked);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
