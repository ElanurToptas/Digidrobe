import 'package:flutter/material.dart';
import 'package:my_digidrobe/features/onboarding/widgets/gender_button.dart';

class GenderSelector extends StatelessWidget {
  final String? selectedGender;
  final ValueChanged<String> onSelect;

  const GenderSelector({
    super.key,
    required this.selectedGender,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Cinsiyetiniz",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 8),
        ...["Kadın", "Erkek", "Belirtmek İstemiyorum"].map(
          (gender) => Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: GenderButton(
              title: gender,
              selected: selectedGender == gender,
              onTap: () => onSelect(gender),
            ),
          ),
        ),
      ],
    );
  }
}
