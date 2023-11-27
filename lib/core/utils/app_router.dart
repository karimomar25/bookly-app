import 'package:bookly_app/Features/Splash/views/splash_view.dart';
import 'package:bookly_app/Features/home/presentation/views/book_view.dart';
import 'package:bookly_app/Features/home/presentation/views/home_view.dart';
import 'package:bookly_app/Features/search/search_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: '/homeview',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: '/bookview',
        builder: (context, state) => const BookView(),
      ),
      GoRoute(
        path: '/searchview',
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
