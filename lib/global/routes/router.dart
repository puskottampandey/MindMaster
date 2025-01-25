import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mindmaster/global/routes/route_constants.dart';
import 'package:mindmaster/views/authentication/forgot_password/forgot_password.dart';
import 'package:mindmaster/views/authentication/forgot_password/reset_password_screen.dart';
import 'package:mindmaster/views/authentication/forgot_password/verification_code_screen.dart';
import 'package:mindmaster/views/authentication/signin/sign_in_screen.dart';
import 'package:mindmaster/views/authentication/signup/sign_up_screen.dart';
import 'package:mindmaster/views/doctor_book/doctor_details.dart';
import 'package:mindmaster/views/doctor_book/payment_screen.dart';
import 'package:mindmaster/views/home/home/home_screen.dart';
import 'package:mindmaster/views/home/main_home/main_home_screen.dart';
import 'package:mindmaster/views/oboarding/onboarding_screen.dart';
import 'package:mindmaster/views/search/search_screen.dart';

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
        name: RouteConstants.myApp,
        path: '/myApp',
        builder: (context, state) {
          return MainHomeScreen();
        }),
    GoRoute(
        name: RouteConstants.onboard,
        path: '/onboard',
        builder: (context, state) {
          return OnboardingScreen();
        }),
    GoRoute(
        name: RouteConstants.signIn,
        path: '/signIn',
        builder: (context, state) {
          return SignInScreen();
        }),
    GoRoute(
        name: RouteConstants.signUp,
        path: '/signUp',
        builder: (context, state) {
          return const SignUpScreen();
        }),
    GoRoute(
        name: RouteConstants.forgotPassword,
        path: '/forgotPassword',
        builder: (context, state) {
          return const ForgotPassword();
        }),
    GoRoute(
        name: RouteConstants.verificationCode,
        path: '/verificationCode',
        builder: (context, state) {
          return const VerificationCodeScreen();
        }),
    GoRoute(
        name: RouteConstants.resetPassword,
        path: '/resetPassword',
        builder: (context, state) {
          return const ResetPasswordScreen();
        }),
    GoRoute(
        name: RouteConstants.search,
        path: '/search',
        builder: (context, state) {
          return const SearchScreen();
        }),
    GoRoute(
        name: RouteConstants.doctorDetails,
        path: '/doctorDetails',
        builder: (context, state) {
          return const DoctorDetails();
        }),
    GoRoute(
        name: RouteConstants.payment,
        path: '/payment',
        builder: (context, state) {
          return const PaymentScreen();
        }),
  ],
);
