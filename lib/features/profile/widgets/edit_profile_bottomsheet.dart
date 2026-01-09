import 'package:flutter/material.dart';

void showEditProfileBottomSheet({
  required BuildContext context,
  required String title,
  required String currentValue,
  required Function(String) onSave,
}) {
  final controller = TextEditingController(text: currentValue);

  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) {
      return Padding(
        padding: EdgeInsets.only(
          left: 16,
          right: 16,
          top: 16,
          bottom: MediaQuery.of(context).viewInsets.bottom + 16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            TextField(
              controller: controller,
              autofocus: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                onPressed: () {
                  onSave(controller.text);
                  Navigator.pop(context);
                },
                child: const Text("Kaydet", style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      );
    },
  );
}
