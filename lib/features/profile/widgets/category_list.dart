import 'package:flutter/material.dart';
import 'category_chip.dart';

class CategoryList extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onSelected;

  const CategoryList({
    super.key,
    required this.selectedIndex,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    final categories = ["Tüm", "Üst Giyim", "Alt", "Ayakkabı"];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: Row(
        children: List.generate(categories.length, (index) {
          return Expanded(
            child: GestureDetector(
              onTap: () => onSelected(index),
              child: Center(
                child: CategoryChip(
                  title: categories[index],
                  selected: selectedIndex == index,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
