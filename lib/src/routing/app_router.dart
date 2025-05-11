import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:simply_news/src/features/home/presentation/home_screen.dart';

enum AppRoute {
  homeScreen,
}

final goRouterProvider = Provider<GoRouter>((ref) {
  return goRouter;
});

final goRouter = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      name: AppRoute.homeScreen.name,
      builder: (context, state) => HomeScreen(),
    ),
  ],
);
