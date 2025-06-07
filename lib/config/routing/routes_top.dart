import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mini_mart/config/routing/routes.dart';
import 'package:mini_mart/config/routing/routes_branches.dart';
import 'package:mini_mart/modules/cart/ui/cart_screen.dart';
import 'package:mini_mart/modules/favorites/favorites_screen.dart';
import 'package:mini_mart/modules/home/ui/home_screen.dart';
import 'package:mini_mart/modules/nav_screen/nav_screen.dart';
import 'package:mini_mart/modules/profile/profile_screen.dart';
import 'package:mini_mart/modules/splash/splash_screen.dart';

final rootNavKey = GlobalKey<NavigatorState>();
final shellNavKey = GlobalKey<NavigatorState>(debugLabel: 'shell');

final GoRouter goRouter = GoRouter(
  navigatorKey: rootNavKey,
  initialLocation: Routes.splash,
  routes: topRoutes,
);

List<RouteBase> topRoutes = [
  GoRoute(
    path: Routes.splash,
    builder: (context, state) => const SplashScreen(),
  ),
  StatefulShellRoute.indexedStack(
    builder: (context, state, navigationShell) {
      return NavScreen(navigationShell: navigationShell);
    },
    branches: [
      StatefulShellBranch(
        navigatorKey: shellNavKey,
        routes: [
          GoRoute(
            path: Routes.home,
            builder: (context, state) => HomeScreen(),
            routes: homeRoutes,
          ),
        ],
      ),
      StatefulShellBranch(
        routes: [
          GoRoute(
            path: Routes.cart,
            builder: (context, state) => CartScreen(),
            routes: cartRoutes,
          ),
        ],
      ),
      StatefulShellBranch(
        routes: [
          GoRoute(
            path: Routes.favorites,
            builder: (context, state) => FavoritesScreen(),
            routes: favoritesRoutes,
          ),
        ],
      ),
      StatefulShellBranch(
        routes: [
          GoRoute(
            path: Routes.profile,
            builder: (context, state) => ProfileScreen(),
            routes: profileRoutes,
          ),
        ],
      ),
    ],
  ),
];
