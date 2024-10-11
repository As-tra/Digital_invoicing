import 'package:digital_invoicing/views/home_view.dart';
import 'package:digital_invoicing/views/revenue_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const revenueView = "/revenue_view";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: revenueView,
        builder: (context, state) => const RevenueView(),
      ),
    ],
  );
}
