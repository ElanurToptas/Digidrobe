import 'package:flutter/material.dart';
import "products_grid.dart";
import 'category_list.dart';

class ProductsTab extends StatelessWidget {
  final int selectedCategoryIndex;
  final Function(int) onCategorySelected;

  const ProductsTab({
    super.key,
    required this.selectedCategoryIndex,
    required this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CategoryList(
          selectedIndex: selectedCategoryIndex,
          onSelected: onCategorySelected,
        ),
        const Expanded(child: ProductsGrid()),
      ],
    );
  }
}
