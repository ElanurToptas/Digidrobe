import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'widgets/add_button.dart ';
import 'widgets/profile_appbar.dart';
import 'widgets/profile_header.dart';
import 'widgets/profile_tab_view.dart';
import 'widgets/profile_tabbar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int selectedCategoryIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const ProfileAppBar(),
      floatingActionButton: const AddProductButton(),
      body: Column(
        children: [
          ProfileHeader(
            onEditPressed: () => context.push('/edit_profile'),
          ),
          ProfileTabBar(tabController: _tabController),
          Expanded(
            child: ProfileTabView(
              tabController: _tabController,
              selectedCategoryIndex: selectedCategoryIndex,
              onCategorySelected: (index) {
                setState(() => selectedCategoryIndex = index);
              },
            ),
          ),
        ],
      ),
    );
  }
}
