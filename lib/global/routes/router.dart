import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mindmaster/global/routes/route_constants.dart';
import 'package:mindmaster/views/oboarding/onboarding_screen.dart';

import '../../views/splash/splash_screen.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: navigatorKey,
  routes: [
    GoRoute(
        name: RouteConstants.splash,
        path: '/',
        builder: (context, state) {
          return const SplashScreen();
        }),
    GoRoute(
        name: RouteConstants.onboard,
        path: '/onboard',
        builder: (context, state) {
          return const OnboardingScreen();
        }),
  ],
);
