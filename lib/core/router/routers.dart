import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/router/app_routes.dart';
import 'package:flutter_final_project/features/Home/presentation/page/home_screen.dart';
import 'package:flutter_final_project/features/auth/presentation/page/Authentication%20Choice.dart';
import 'package:flutter_final_project/features/auth/presentation/page/Fingerprint_screen.dart';
import 'package:flutter_final_project/features/auth/presentation/page/forget_Password.dart';
import 'package:flutter_final_project/features/auth/presentation/page/login_screen.dart';
import 'package:flutter_final_project/features/auth/presentation/page/signup_screen.dart';
import 'package:flutter_final_project/features/onboardind/presentation/page/onboarding.dart';
import 'package:flutter_final_project/features/splach_screen/presentation/page/splach_screen.dart';
import 'package:flutter_final_project/screens/sidebar_menu.dart';
import 'package:flutter_final_project/screens/profile_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_final_project/screens/payment_methods_screen.dart';
import 'package:flutter_final_project/screens/add_card_screen.dart';
import 'package:flutter_final_project/screens/settings_screen.dart';
import 'package:flutter_final_project/screens/notification_settings_screen.dart';
import 'package:flutter_final_project/screens/password_settings_screen.dart';
import 'package:flutter_final_project/screens/delete_account_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: AppRoutes.sidebar,
  routes: [
    GoRoute(
      path: AppRoutes.splash,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: AppRoutes.onboarding,
      builder: (context, state) => const Onboarding(),
    ),
    GoRoute(
      path: AppRoutes.authChoosing,
      builder: (context, state) => const Authenticationchoice(),
    ),
    GoRoute(
      path: AppRoutes.login,
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: AppRoutes.signup,
      builder: (context, state) => SignupScreen(),
    ),
    GoRoute(
      path: AppRoutes.forgotPassword,
      builder: (context, state) => ForgetPassword(),
    ),
    GoRoute(
      path: AppRoutes.home,
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: AppRoutes.fingerprint,
      builder: (context, state) => FingerprintScreen(),
    ),
    GoRoute(
      path: AppRoutes.sidebar,
      builder: (context, state) => const SidebarMenu(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => ProfileScreen(),
    ),
    GoRoute(
      path: '/address',
      builder: (context, state) => const PlaceholderScreen(title: 'Delivery Address'),
    ),
    GoRoute(
      path: '/payment-methods',
      builder: (context, state) => const PaymentMethodsScreen(),
    ),
    GoRoute(
      path: '/add-card',
      builder: (context, state) => const AddCardScreen(),
    ),

    GoRoute(
      path: '/orders',
      builder: (context, state) => const PlaceholderScreen(title: 'My Orders'),
    ),
    GoRoute(
      path: '/contact',
      builder: (context, state) => const PlaceholderScreen(title: 'Contact Us'),
    ),
    GoRoute(
      path: '/help',
      builder: (context, state) => const PlaceholderScreen(title: 'Help & FAQs'),
    ),
    GoRoute(
  path: '/settings',
  builder: (context, state) => const SettingsScreen(),
),

GoRoute(
  path: '/notification-settings',
  builder: (context, state) => const NotificationSettingsScreen(),
),

GoRoute(
  path: '/password-settings',
  builder: (context, state) => const PasswordSettingsScreen(),
),

GoRoute(
  path: '/delete-account',
  builder: (context, state) => const DeleteAccountScreen(),
),
    GoRoute(
      path: '/logout',
      builder: (context, state) => const PlaceholderScreen(title: 'Log Out'),
    ),
  ],
  errorBuilder: (context, state) {
    return Scaffold(
      appBar: AppBar(title: const Text('Error')),
      body: const Center(child: Text('Page not found')),
    );
  },
);

/// Simple placeholder screen for missing routes
class PlaceholderScreen extends StatelessWidget {
  final String title;
  const PlaceholderScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text('$title screen')),
    );
  }
}