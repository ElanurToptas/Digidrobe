
import 'package:go_router/go_router.dart';

import '../features/landing/landing_screen.dart';
import '../features/onboarding/onboarding_screen_1.dart';
import '../features/onboarding/onboarding_screen_2.dart';
import '../features/paywall/paywall_screen.dart';
import '../features/home/home_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LandingScreen(),
    ),
    GoRoute(
      path: '/onboarding1',
      builder: (context, state) => const OnboardingScreen1(),
    ),
    GoRoute(
      path: '/onboarding2',
      builder: (context, state) => const OnboardingScreen2(),
    ),
    GoRoute(
      path: '/paywall',
      builder: (context, state) => const PaywallScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);
