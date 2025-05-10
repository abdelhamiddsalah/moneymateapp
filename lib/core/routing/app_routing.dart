import 'package:go_router/go_router.dart';
import 'package:moneymateapp/core/routing/routes.dart';
import 'package:moneymateapp/core/widgets/bottom_naviation_bar.dart';
import 'package:moneymateapp/core/widgets/send_email_widget.dart';
import 'package:moneymateapp/core/widgets/success_widget.dart';
import 'package:moneymateapp/features/auth/forgetpassword/presentation/screens/forget_password_view.dart';
import 'package:moneymateapp/features/auth/login/presentation/pages/login_view.dart';
import 'package:moneymateapp/features/auth/resetpassword/presentation/screens/reset_password_view.dart';
import 'package:moneymateapp/features/auth/sinup/presentation/pages/sinup_view.dart';
import 'package:moneymateapp/features/budgets/presentation/pages/budget_view.dart';
import 'package:moneymateapp/features/budgets/presentation/pages/expense_view.dart';
import 'package:moneymateapp/features/home/presentation/pages/home_view.dart';
import 'package:moneymateapp/features/home/presentation/pages/transactions_detailes.dart';
import 'package:moneymateapp/features/onboarding/presentation/screens/onboarding_view.dart';
import 'package:moneymateapp/features/profile/presentation/screens/edit_account_view.dart';
import 'package:moneymateapp/features/profile/presentation/screens/profile_view.dart';


class AppRouting {
  static final GoRouter router = GoRouter(
    initialLocation:
        Routes.onboarding, // التأكد أن initialLocation يطابق Route موجود
    routes: <GoRoute>[
 
      GoRoute(
        path: Routes.onboarding,
        builder: (context, state) => const OnboardingView(),
      ),
       GoRoute(
        path: Routes.login,
        builder: (context, state) => const LoginView(),
      ),
       GoRoute(
        path: Routes.signup,
        builder: (context, state) => const SinupView(),
      ),
      GoRoute(path: Routes.forgetpassword, builder: (context, state) => const ForgetPasswordView(),),
      GoRoute(path: Routes.resetpassword, builder: (context, state) => ResetPasswordView(),),
      GoRoute(path: Routes.home, builder: (context, state) => HomeView(),),

       GoRoute(path: Routes.transactiondetails, builder: (context, state) => TransactionsDetailes(),),

      GoRoute(path: Routes.bottomnav, builder: (context, state) => BottomNaviationBar(),),
      GoRoute(path: Routes.sendemail, builder: (context, state) => SendEmailWidget(),),
      GoRoute(path: Routes.success, builder: (context, state) => SuccessWidget(),),
      GoRoute(path: Routes.profile, builder: (context, state) => ProfileView(),),
      GoRoute(path: Routes.editaccount, builder: (context, state) => EditAccountView(),),
      GoRoute(path: Routes.budgets, builder: (context, state) => ExpenseView(),),
    ],
  );
}
