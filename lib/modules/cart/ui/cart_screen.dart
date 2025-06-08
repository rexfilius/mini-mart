import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mini_mart/config/theme/app_bar_with_nav.dart';
import 'package:mini_mart/config/theme/screen_sizing.dart';
import 'package:mini_mart/modules/cart/ui/cart_item_card.dart';
import 'package:mini_mart/modules/cart/notifier/cart_screen_notifier.dart';
import 'package:mini_mart/modules/cart/ui/cart_screen_bottom_widget.dart';

class CartScreen extends ConsumerWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(cartScreenProvider);
    final notifier = ref.read(cartScreenProvider.notifier);
    return Scaffold(
      appBar: AppBarWithNav(title: 'Your Cart'),
      body: model.items.isEmpty
          ? Center(child: Text('Your cart is empty'))
          : ListView.separated(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(vertical: 16.ah, horizontal: 16.aw),
              itemCount: model.items.length,
              separatorBuilder: (_, __) => SizedBox(height: 16.ah),
              itemBuilder: (context, index) {
                final item = model.items[index];
                return CartItemCard(
                  item: item,
                  onQuantityChanged: (newQty) {
                    notifier.updateQuantity(index: index, quantity: newQty);
                  },
                  onRemove: () {
                    notifier.removeItem(index);
                  },
                );
              },
            ),
      bottomNavigationBar: CartScreenBottomWidget(),
    );
  }
}
