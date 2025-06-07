import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mini_mart/modules/cart/model/cart_item.dart';
import 'package:mini_mart/modules/cart/model/cart_screen_model.dart';

final cartScreenProvider =
    NotifierProvider<CartScreenNotifier, CartScreenModel>(
      CartScreenNotifier.new,
    );

class CartScreenNotifier extends Notifier<CartScreenModel> {
  @override
  CartScreenModel build() {
    return CartScreenModel(items: demoCartItems);
  }

  void updateQuantity({required int index, required int quantity}) {
    final newItems = [...state.items];
    newItems[index] = newItems[index].copyWith(quantity: quantity);
    state = state.copyWith(items: newItems);
  }

  void removeItem(int index) {
    final newItems = [...state.items]..removeAt(index);
    state = state.copyWith(items: newItems);
  }
}
