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
import 'package:go_router/go_router.dart';
import 'package:flutter_final_project/features/profile/presentation/page/profile_menu_screen.dart';
import 'package:flutter_final_project/features/profile/presentation/page/my_profile_screen.dart';
import 'package:flutter_final_project/features/profile/presentation/page/settings_screen.dart';
import 'package:flutter_final_project/features/profile/presentation/page/notification_settings_screen.dart';
import 'package:flutter_final_project/features/profile/presentation/page/password_settings_screen.dart';
import 'package:flutter_final_project/features/profile/presentation/page/delete_account_screen.dart';
import 'package:flutter_final_project/features/profile/presentation/page/payment_methods_screen.dart';
import 'package:flutter_final_project/features/profile/presentation/page/add_card_screen.dart';
import 'package:flutter_final_project/features/profile/presentation/page/contact_us_screen.dart';
import 'package:flutter_final_project/features/profile/presentation/page/help_faqs_screen.dart';


final GoRouter router = GoRouter(
  initialLocation: AppRoutes.splash,
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
  path: AppRoutes.profileMenu, // '/profile'
  builder: (context, state) => const ProfileMenuScreen(),
  routes: [
    GoRoute(
      path: 'my-profile',
      builder: (context, state) => const MyProfileScreen(),
    ),
    GoRoute(
      path: 'payments',
      builder: (context, state) => const PaymentMethodsScreen(),
      routes: [
        GoRoute(
          path: 'add-card',
          builder: (context, state) => const AddCardScreen(),
        ),
      ],
    ),
    GoRoute(
      path: 'settings',
      builder: (context, state) => const SettingsScreen(),
      routes: [
        GoRoute(
          path: 'notification-settings',
          builder: (context, state) => const NotificationSettingsScreen(),
        ),
        GoRoute(
          path: 'password-settings',
          builder: (context, state) => const PasswordSettingsScreen(),
        ),
        GoRoute(
          path: 'delete-account',
          builder: (context, state) => const DeleteAccountScreen(),
        ),
      ],
      
    ),
    GoRoute(
      path: 'contact-us',
      builder: (context, state) => const ContactUsScreen(),
    ),
    GoRoute(
      path: 'help-faqs',
      builder: (context, state) => const HelpFaqsScreen(),
    ),
  ],
)

  ],
  
  
  errorBuilder: (context, state) {
    return Scaffold(
      appBar: AppBar(title: const Text('Error')),
      body: const Center(child: Text('Page not found')),
    );
  },
);
