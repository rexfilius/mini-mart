import 'package:flutter/material.dart';
import 'package:mini_mart/config/theme/app_colors.dart';
import 'package:mini_mart/config/theme/screen_sizing.dart';
import 'package:mini_mart/modules/cart/model/cart_item.dart';

class CartItemCard extends StatelessWidget {
  final CartItem item;
  final ValueChanged<int> onQuantityChanged;
  final VoidCallback onRemove;

  const CartItemCard({
    super.key,
    required this.item,
    required this.onQuantityChanged,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Container(
        color: const Color(0xFFF5F5F7),
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                item.imageUrl,
                width: 80.aw,
                height: 80.ah,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 8.aw),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 4.ah),
                  Text(
                    '\$${item.price.toStringAsFixed(2)}',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4.ah),
                  Text(
                    item.inStock ? 'In stock' : 'Out of stock',
                    style: TextStyle(
                      fontSize: 12,
                      color: item.inStock ? AppColors.green : AppColors.red,
                    ),
                  ),
                  SizedBox(height: 8.ah),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleIconButton(
                            icon: Icons.remove,
                            decorationColor: Color(0xFFE0E3EB),
                            onTap: () {
                              if (item.quantity > 1) {
                                onQuantityChanged(item.quantity - 1);
                              }
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Text(
                              item.quantity.toString(),
                              style: const TextStyle(fontSize: 16),
                            ),
                          ),
                          CircleIconButton(
                            icon: Icons.add,
                            onTap: () {
                              onQuantityChanged(item.quantity + 1);
                            },
                          ),
                        ],
                      ),
                      CircleIconButton(
                        icon: Icons.delete_outline,
                        onTap: onRemove,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CircleIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final Color? decorationColor;

  const CircleIconButton({
    super.key,
    required this.icon,
    required this.onTap,
    this.decorationColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 32.aw,
        height: 32.ah,
        decoration: BoxDecoration(
          color: decorationColor ?? AppColors.white,
          // const Color(0xFFE0E3EB),
          shape: BoxShape.circle,
        ),
        child: Icon(icon, size: 20),
      ),
    );
  }
}
