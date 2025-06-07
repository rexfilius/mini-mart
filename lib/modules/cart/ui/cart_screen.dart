import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mini_mart/config/theme/app_bar.dart';
import 'package:mini_mart/config/theme/app_colors.dart';
import 'package:mini_mart/config/theme/screen_sizing.dart';
import 'package:mini_mart/modules/cart/ui/cart_item_card.dart';
import 'package:mini_mart/modules/cart/model/cart_screen_model.dart';
import 'package:mini_mart/modules/cart/notifier/cart_screen_notifier.dart';

class CartScreen extends ConsumerStatefulWidget {
  const CartScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CartScreenState();
}

class _CartScreenState extends ConsumerState<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final model = ref.watch(cartScreenProvider);
    final notifier = ref.read(cartScreenProvider.notifier);
    return Scaffold(
      appBar: AppBarWithNav(title: 'Your Cart'),
      body: ListView.separated(
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
      bottomNavigationBar: SafeArea(
        top: false,
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Order Info",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(height: 4.ah),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Subtotal'),
                  Text('\$${model.subtotal.toStringAsFixed(2)}'),
                ],
              ),
              SizedBox(height: 4.ah),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Shipping'),
                  Text('\$${CartScreenModel.shipping.toStringAsFixed(2)}'),
                ],
              ),
              SizedBox(height: 4.ah),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Total',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '\$${model.total.toStringAsFixed(2)}',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 12.ah),
              SizedBox(
                width: double.infinity,
                height: 42.ah,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.blue1,
                    foregroundColor: AppColors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Checkout (\$${model.total.toStringAsFixed(0)})',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
