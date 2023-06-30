import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:got_info/src/features/authentication/presentation/sign_in_page.dart';

import 'not_found_screen.dart';

enum AppRoute {
  signIn,
  createAccount,
  homePage,
}

final goRouterProvider = Provider<GoRouter>((ref) {
  final goRouter = GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: false,
    routes: [
      GoRoute(
        path: '/',
        name: AppRoute.signIn.name,
        builder: (context, state) => const SignInPage(),
      ),
    ],
    errorBuilder: (context, state) => const NotFoundScreen(),
  );
  return goRouter;
});
