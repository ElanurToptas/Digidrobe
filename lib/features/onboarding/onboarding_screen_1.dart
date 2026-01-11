import 'package:flutter/material.dart';
import 'package:my_digidrobe/features/onboarding/widgets/bottom_content.dart';
import 'package:my_digidrobe/features/onboarding/widgets/video_background.dart';
import 'package:video_player/video_player.dart';

class OnboardingScreen1 extends StatefulWidget {
  const OnboardingScreen1({super.key});

  @override
  State<OnboardingScreen1> createState() => _OnboardingScreen1State();
}

class _OnboardingScreen1State extends State<OnboardingScreen1> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.asset('assets/videos/onboarding.mp4')
      ..initialize().then((_) {
        _controller
          ..setLooping(true)
          ..setVolume(0)
          ..play();
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _controller.value.isInitialized
          ? Stack(
              children: [
                VideoBackground(controller: _controller),
                const OnboardingBottomContent(),
              ],
            )
          : const Center(child: CircularProgressIndicator()),
    );
  }
}
