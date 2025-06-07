import 'package:go_router/go_router.dart';
import 'package:mini_mart/config/routing/routes.dart';
import 'package:mini_mart/config/routing/routes_top.dart';
import 'package:mini_mart/modules/home/ui/product_detail_screen.dart';

List<RouteBase> homeRoutes = [
  GoRoute(
    parentNavigatorKey: rootNavKey,
    path: Routes.productDetail,
    builder: (context, state) => const ProductDetailScreen(),
  ),
];

List<RouteBase> cartRoutes = [];

List<RouteBase> favoritesRoutes = [];

List<RouteBase> profileRoutes = [];
