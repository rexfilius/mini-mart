import 'package:go_router/go_router.dart';
import 'package:mini_mart/config/routing/routes.dart';
import 'package:mini_mart/modules/home/product_detail_screen.dart';

List<RouteBase> homeRoutes = [
  GoRoute(
    path: Routes.productDetail,
    builder: (context, state) => const ProductDetailScreen(),
  ),
];

List<RouteBase> cartRoutes = [];

List<RouteBase> favoritesRoutes = [];

List<RouteBase> profileRoutes = [];
