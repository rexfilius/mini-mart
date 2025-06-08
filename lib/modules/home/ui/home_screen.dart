import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mini_mart/config/routing/routes.dart';
import 'package:mini_mart/config/theme/app_bar_with_nav.dart';
import 'package:mini_mart/config/theme/app_bar_with_search.dart';
import 'package:mini_mart/modules/home/model/product.dart';
import 'package:mini_mart/modules/home/ui/product_card.dart';
import 'package:mini_mart/modules/home/notifier/home_providers.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithSearch(title: 'Technology'),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            sliver: SliverToBoxAdapter(
              child: Text(
                'Smartphones, Laptops & Accesories',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) {
                final product = demoProducts[index];
                return ProductCard(
                  product: product,
                  onTap: () {
                    ref.read(productProvider.notifier).state = product;
                    context.push(RoutesNest.productDetail);
                  },
                );
              }, childCount: demoProducts.length),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 0.65,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
