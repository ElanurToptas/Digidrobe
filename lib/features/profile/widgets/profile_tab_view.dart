import 'package:flutter/material.dart';
import 'products_tab.dart';
import 'empty_tab.dart';

class ProfileTabView extends StatelessWidget {
  final TabController tabController;
  final int selectedCategoryIndex;
  final Function(int) onCategorySelected;

  const ProfileTabView({
    super.key,
    required this.tabController,
    required this.selectedCategoryIndex,
    required this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: tabController,
      children: [
        ProductsTab(
          selectedCategoryIndex: selectedCategoryIndex,
          onCategorySelected: onCategorySelected,
        ),
        const EmptyTab(),
        const EmptyTab(),
      ],
    );
  }
}
