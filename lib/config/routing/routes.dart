abstract class Routes {
  static const splash = '/';

  static const home = '/home';
  static const cart = '/cart';
  static const favorites = '/favorites';
  static const profile = '/profile';

  static const productDetail = 'productDetail';
}

abstract class RoutesNest {
  static const productDetail = '/home/productDetail';
}
