import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mini_mart/config/theme/app_colors.dart';
import 'package:mini_mart/config/theme/screen_sizing.dart';
import 'package:mini_mart/modules/cart/model/cart_screen_model.dart';
import 'package:mini_mart/modules/cart/notifier/cart_screen_notifier.dart';

class CartScreenBottomWidget extends ConsumerWidget {
  const CartScreenBottomWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(cartScreenProvider);
    return SafeArea(
      top: false,
      child: model.items.isEmpty
          ? SizedBox.shrink()
          : Container(
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
    );
  }
}
