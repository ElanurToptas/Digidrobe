import 'package:flutter/material.dart';
import 'package:my_digidrobe/features/paywall/widgets/paywell_background_video.dart';
import 'package:my_digidrobe/features/paywall/widgets/paywell_close_button.dart';
import 'package:my_digidrobe/features/paywall/widgets/paywell_content.dart';
import 'package:my_digidrobe/features/paywall/widgets/paywell_overlay.dart';
import 'package:video_player/video_player.dart';

class PaywallScreen extends StatefulWidget {
  const PaywallScreen({super.key});

  @override
  State<PaywallScreen> createState() => _PaywallScreenState();
}

class _PaywallScreenState extends State<PaywallScreen> {
  late VideoPlayerController _controller;
  int selectedIndex = 1;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset("assets/videos/pay.mp4")
      ..initialize().then((_) {
        _controller.setLooping(true);
        _controller.play();
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
      body: Stack(
        children: [
          PaywallBackgroundVideo(controller: _controller),
          const PaywallOverlay(),
          const PaywallCloseButton(),
          SafeArea(
            child: PaywallContent(
              selectedIndex: selectedIndex,
              onSelect: (i) => setState(() => selectedIndex = i),
            ),
          ),
        ],
      ),
    );
  }
}
