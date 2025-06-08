import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mini_mart/config/theme/app_bar_with_nav.dart';
import 'package:mini_mart/config/theme/app_colors.dart';
import 'package:mini_mart/config/theme/screen_sizing.dart';
import 'package:mini_mart/modules/cart/notifier/cart_screen_notifier.dart';
import 'package:mini_mart/modules/home/notifier/home_providers.dart';

class ProductDetailScreen extends ConsumerStatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProductDetailScreenState();
}

class _ProductDetailScreenState extends ConsumerState<ProductDetailScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final product = ref.watch(productProvider);
    return Scaffold(
      appBar: AppBarWithNav(title: 'Go back', onTapBack: () => context.pop()),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 80.0),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Container(
                        color: const Color(0xFFF5F5F7),
                        child: AspectRatio(
                          aspectRatio: 1.05,
                          child: Stack(
                            children: [
                              Positioned.fill(
                                child: Image.asset(
                                  product.imageUrl,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                top: 12,
                                right: 12,
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      product.isLiked = !product.isLiked;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withValues(
                                            alpha: 0.1,
                                          ),
                                          blurRadius: 4,
                                          offset: const Offset(0, 2),
                                        ),
                                      ],
                                    ),
                                    padding: const EdgeInsets.all(8),
                                    child: Icon(
                                      product.isLiked
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                      color: product.isLiked
                                          ? Colors.red
                                          : Colors.black,
                                      size: 24,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      product.name,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: 8.ah),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      "\$${product.price}",
                      style: TextStyle(
                        fontSize: 28.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: 24.ah),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'About this item',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                  SizedBox(height: 12.ah),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: product.descriptionBullets
                          .map(
                            (bullet) => Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 4.0,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    '•',
                                    style: TextStyle(
                                      fontSize: 18,
                                      height: 1.4,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const SizedBox(width: 6),
                                  Expanded(
                                    child: Text(
                                      bullet,
                                      style: TextStyle(
                                        fontSize: 14,
                                        height: 1.4,
                                        color: Colors.grey[800],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  SizedBox(height: 100.ah),
                ],
              ),
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: SafeArea(
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 16,
                ),
                child: SizedBox(
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
                    onPressed: () {
                      ref
                          .read(cartScreenProvider.notifier)
                          .addProductToCart(product);
                      _showAddToCartSnackbar();
                    },
                    child: const Text(
                      'Add to cart',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showAddToCartSnackbar() {
    final messenger = ScaffoldMessenger.of(context);
    messenger
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.transparent,
          elevation: 0,
          margin: const EdgeInsets.all(8),
          duration: const Duration(seconds: 3),
          content: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.1),
                  blurRadius: 6,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              children: [
                Container(width: 4, height: 40, color: Colors.green),
                const SizedBox(width: 12),
                const Icon(Icons.check_circle, color: Colors.green, size: 24),
                const SizedBox(width: 12),
                const Expanded(
                  child: Text(
                    'Item has been added to cart',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: messenger.hideCurrentSnackBar,
                  child: const Icon(Icons.close, color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      );
  }
}
