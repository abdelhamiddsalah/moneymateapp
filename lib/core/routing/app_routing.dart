import 'package:go_router/go_router.dart';
import 'package:moneymateapp/core/routing/routes.dart';
import 'package:moneymateapp/features/auth/features/login/presentation/pages/login_view.dart';


class AppRouting {
  static final GoRouter router = GoRouter(
    initialLocation:
        Routes.onboarding, // التأكد أن initialLocation يطابق Route موجود
    routes: <GoRoute>[
 
      GoRoute(
        path: Routes.onboarding,
        builder: (context, state) => const LoginView(),
      ),
       GoRoute(
        path: Routes.login,
        builder: (context, state) => const LoginView(),
      ),
    ],
  );
}
