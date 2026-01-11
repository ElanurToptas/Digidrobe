import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_digidrobe/features/onboarding/widgets/date_picker_field.dart';
import 'package:my_digidrobe/features/onboarding/widgets/gender_selector.dart';
import 'package:my_digidrobe/features/onboarding/widgets/name_input.dart';
import 'package:my_digidrobe/features/onboarding/widgets/onboarding_background.dart';
import 'package:my_digidrobe/features/onboarding/widgets/onboarding_header.dart';
import 'package:my_digidrobe/features/onboarding/widgets/progress_bar.dart';
import 'package:my_digidrobe/features/onboarding/widgets/submit_button.dart';
import 'package:my_digidrobe/models/user_model.dart';
import 'package:my_digidrobe/providers/user_provider.dart';
import 'package:provider/provider.dart';

class OnboardingScreen2 extends StatefulWidget {
  const OnboardingScreen2({super.key});

  @override
  State<OnboardingScreen2> createState() => _OnboardingScreen2State();
}

class _OnboardingScreen2State extends State<OnboardingScreen2> {
  final TextEditingController _nameController = TextEditingController();
  DateTime? _selectedDate;
  String? _selectedGender;

  bool get isFormValid =>
      _nameController.text.isNotEmpty &&
      _selectedDate != null &&
      _selectedGender != null;

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  void _onSubmit() {
    context.read<UserProvider>().setUser(
          UserModel(
            name: _nameController.text,
            gen: _selectedGender!,
            date: _selectedDate!,
          ),
        );

    context.go('/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF5F7),
      body: OnboardingBackground(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),

              OnboardingProgress(
                nameFilled: _nameController.text.isNotEmpty,
                dateFilled: _selectedDate != null,
                genderFilled: _selectedGender != null,
              ),

              const SizedBox(height: 24),
              const OnboardingHeader(),
              const SizedBox(height: 24),

              NameInput(
                controller: _nameController,
                onChanged: () => setState(() {}),
              ),

              const SizedBox(height: 24),

              DatePickerField(
                selectedDate: _selectedDate,
                onSelect: (date) {
                  setState(() => _selectedDate = date);
                },
              ),

              const SizedBox(height: 24),

              GenderSelector(
                selectedGender: _selectedGender,
                onSelect: (gender) {
                  setState(() => _selectedGender = gender);
                },
              ),

              const Spacer(),

              SubmitButton(
                enabled: isFormValid,
                onPressed: _onSubmit,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
