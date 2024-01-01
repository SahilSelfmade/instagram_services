import 'package:go_router/go_router.dart';
import 'package:instagram_services/instagram_services/instagram_services_home.dart';
import 'package:instagram_services/instagram_services/services/instagram_services_followers.dart';
import 'package:instagram_services/instagram_services/services/instagram_services_likes.dart';
import 'package:instagram_services/instagram_services/services/instagram_services_views.dart';

import '../../core.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

class AppRouter {
  static AppRouter? _instance;
  // Avoid self instance
  AppRouter._();
  static AppRouter get instance => _instance ??= AppRouter._();

  // GoRouter configuration
  static GoRouter router = GoRouter(
    initialLocation: AppRoutesConstants.home,
    // initialLocation: '/',
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    observers: [
      // GoRouterObserver(),
    ],
    routes: [
      GoRoute(
        name: AppRoutesConstants.home,
        path: AppRoutesConstants.home,
        builder: (context, state) => const InstagramServicesHome(),
      ),
      GoRoute(
        name: AppRoutesConstants.followers,
        path: AppRoutesConstants.followers,
        builder: (context, state) => InstagramServicesFollowers(
          key: state.pageKey,
        ),
      ),
      GoRoute(
        name: AppRoutesConstants.views,
        path: AppRoutesConstants.views,
        builder: (context, state) => InstagramServicesViews(
          key: state.pageKey,
        ),
      ),
      GoRoute(
        name: AppRoutesConstants.likes,
        path: AppRoutesConstants.likes,
        builder: (context, state) => InstagramServicesLikes(
          key: state.pageKey,
        ),
      ),

      // ! =================================================
      // ! =================================================
      // ! =================================================
      // ! =================================================
      // ! =================================================
      // ! =================================================
      // ! =================================================

      //  **************************
      // * AUTHENTICATION DRIVER
      //  **************************
    ],
  );
}

class GoRouterObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    Logger.print('MyTest didPush: $route');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    Logger.print('MyTest didPop: $route');
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    Logger.print('MyTest didRemove: $route');
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    Logger.print('MyTest didReplace: $newRoute');
  }
}
