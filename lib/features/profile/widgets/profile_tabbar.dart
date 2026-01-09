import 'package:flutter/material.dart';

class ProfileTabBar extends StatelessWidget {
  final TabController tabController;

  const ProfileTabBar({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      labelColor: Colors.black,
      unselectedLabelColor: Colors.grey,
      dividerColor: Colors.transparent,
      indicator: const UnderlineTabIndicator(
        borderSide: BorderSide(color: Colors.black, width: 1.3),
      ),
      tabs: const [
        Tab(text: "Ürünler"),
        Tab(text: "Kıyafetler"),
        Tab(text: "Kaydedildi"),
      ],
    );
  }
}
