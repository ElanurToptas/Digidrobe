import 'package:go_router/go_router.dart';
import 'package:my_digidrobe/features/landing/landing_screen.dart';
import 'package:my_digidrobe/features/onboarding/onboarding_screen_1.dart';
import 'package:my_digidrobe/features/onboarding/onboarding_screen_2.dart';

import '../layouts/main_layout.dart';
import '../features/home/home_screen.dart';
import '../features/paywall/paywall_screen.dart';
import '../features/profile/profile_screen.dart';
import '../features/profile/edit_profile.dart';
import '../features/planner/planner_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return MainLayout(child: child);
      },
      routes: [
        GoRoute(path: '/home', builder: (context, state) => const HomeScreen()),
        GoRoute(
          path: '/planner_screen',
          builder: (context, state) => const PlannerScreen(),
        ),
        GoRoute(
          path: '/profile_screen',
          builder: (context, state) => const ProfileScreen(),
        ),
      ],
    ),
    GoRoute(
      path: '/edit_profile',
      builder: (context, state) => const EditProfileScreen(),
    ),
    GoRoute(
      path: '/paywall_screen',
      builder: (context, state) => const PaywallScreen(),
    ),
    GoRoute(path: '/', builder: (context, state) => const LandingScreen()),
    GoRoute(
      path: '/onboarding1',
      builder: (context, state) => const OnboardingScreen1(),
    ),
    GoRoute(
      path: '/onboarding2',
      builder: (context, state) => const OnboardingScreen2(),
    ),
  ],
);
