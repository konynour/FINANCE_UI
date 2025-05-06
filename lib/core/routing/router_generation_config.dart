import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/features/auth/forgot_password_screen.dart';
import 'package:finance_ui/features/auth/login_screen.dart';
import 'package:finance_ui/features/auth/register_login_screen.dart';
import 'package:finance_ui/features/mainscreen/main_screen.dart';
import 'package:finance_ui/features/on_boarding_screen/on_boarding_screen.dart';
import 'package:finance_ui/features/verify_otp/verify_otp_screen.dart';
import 'package:finance_ui/features/verify_otp/widget/create_new_password_screen.dart';
import 'package:finance_ui/features/verify_otp/widget/password_changed_screen.dart';
import 'package:go_router/go_router.dart';

class RouterGenerationConfig {
  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.onBoardingScreen,
    routes: [
      GoRoute(
        path: AppRoutes.onBoardingScreen,
        name: AppRoutes.onBoardingScreen,
        builder: (context, state) => const OnBoardingScreen(),
      ),

      GoRoute(
        path: AppRoutes.LoginScreen,
        name: AppRoutes.LoginScreen,
        builder: (context, state) => const LoginScreen(),
      ),

      GoRoute(
        path: AppRoutes.RegisterLoginScreen,
        name: AppRoutes.RegisterLoginScreen,
        builder: (context, state) => const RegisterLoginScreen(),
      ),
      GoRoute(
        path: AppRoutes.forgotPassword,
        name: AppRoutes.forgotPassword,
        builder: (context, state) => const ForgotPassword(),
      ),

      GoRoute(
        path: AppRoutes.verifyOtpScreen,
        name: AppRoutes.verifyOtpScreen,
        builder: (context, state) => const verifyOtpScreen(),
      ),

      GoRoute(
        path: AppRoutes.mainscreen,
        name: AppRoutes.mainscreen,
        builder: (context, state) => const MainScreen(),
      ),

      GoRoute(
        path: AppRoutes.CreateNewPasswordScreen,
        name: AppRoutes.CreateNewPasswordScreen,
        builder: (context, state) => const CreateNewPasswordScreen(),
      ),

      GoRoute(
        path: AppRoutes.passwordchangedScreen,
        name: AppRoutes.passwordchangedScreen,
        builder: (context, state) => const PasswordChangedScreen(),
      ),
    ],
  );
}
