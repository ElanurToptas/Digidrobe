import 'package:flutter/material.dart';
import '../../data/mock_data.dart';
import 'widgets/app_bar.dart';
import 'widgets/info_banner.dart';
import 'widgets/editor_picks_list.dart';
import 'widgets/digistylist_slider.dart';
import 'widgets/section_title.dart';
import 'widgets/ai_recommendation_card.dart';
import 'widgets/horizontal_image_list.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeAppBar(),
              const InfoBanner(),

              const SectionTitle(title: "Editörün Kıyafet Önerileri"),
              EditorPicksList(items: editorPicks),

              const SectionTitle(title: "Digistylist"),
              DigistylistSlider(items: editorPicks),

              const SectionTitle(title: "Yapay Zeka Önerileri"),
              AiRecommendationCard(image: editorPicks[0]['image']!),

              const SectionTitle(title: "En Yeni Kıyafetler"),
              WardrobeHorizontalList(images: wardrobeImages),

              const SectionTitle(title: "En Son Ürünler"),
              WardrobeHorizontalList(images: wardrobeImages),

              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
