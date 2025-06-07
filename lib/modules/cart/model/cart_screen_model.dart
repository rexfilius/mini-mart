import 'package:equatable/equatable.dart';
import 'package:mini_mart/modules/cart/model/cart_item.dart';

class CartScreenModel extends Equatable {
  final List<CartItem> items;
  static const double shipping = 10.0;

  const CartScreenModel({required this.items});

  double get subtotal =>
      items.fold(0, (sum, item) => sum + item.price * item.quantity);

  double get total => subtotal + shipping;

  CartScreenModel copyWith({List<CartItem>? items}) {
    return CartScreenModel(items: items ?? this.items);
  }

  @override
  List<Object?> get props => [];
}
