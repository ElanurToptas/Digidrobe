import 'package:flutter/material.dart';
import 'widgets/edit_profile_avatar.dart';
import 'widgets/edit_profile_item.dart';
import 'widgets/edit_profile_bottomsheet.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  String username = "ela";
  String gender = "Kadın";
  String birthDate = "13 Oca 2008";

  @override
  Widget build(BuildContext context) {
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
              value: username,
              onTap: () {
                showEditProfileBottomSheet(
                  context: context,
                  title: "Kullanıcı adı",
                  currentValue: username,
                  onSave: (newValue) {
                    setState(() => username = newValue);
                  },
                );
              },
            ),

            EditProfileItem(
              title: "Cinsiyet",
              value: gender,
              onTap: () {
                showEditProfileBottomSheet(
                  context: context,
                  title: "Cinsiyet",
                  currentValue: gender,
                  onSave: (newValue) {
                    setState(() => gender = newValue);
                  },
                );
              },
            ),

            EditProfileItem(
              title: "Doğum Tarihi",
              value: birthDate,
              onTap: () {
                showEditProfileBottomSheet(
                  context: context,
                  title: "Doğum Tarihi",
                  currentValue: birthDate,
                  onSave: (newValue) {
                    setState(() => birthDate = newValue);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
