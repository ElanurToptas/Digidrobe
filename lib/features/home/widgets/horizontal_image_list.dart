import 'package:flutter/material.dart';

class WardrobeHorizontalList extends StatelessWidget {
  final List<String?> images;

  const WardrobeHorizontalList({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemCount: images.length,
        itemBuilder: (context, index) {
          final image = images[index];

          return Container(
            width: 120,
            margin: const EdgeInsets.only(right: 12),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: image == null
                ? const Center(
                    child: Icon(Icons.add, size: 36, color: Colors.grey),
                  )
                : ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(image, fit: BoxFit.cover),
                  ),
          );
        },
      ),
    );
  }
}
