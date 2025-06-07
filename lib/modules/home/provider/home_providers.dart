import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mini_mart/modules/home/product.dart';

final productProvider = StateProvider<Product>((ref) {
  return Product.empty();
});
