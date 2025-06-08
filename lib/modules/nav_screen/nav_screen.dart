import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mini_mart/config/theme/app_colors.dart';
import 'package:mini_mart/modules/cart/notifier/cart_screen_notifier.dart';

class NavScreen extends ConsumerStatefulWidget {
  const NavScreen({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _NavScreenState();
}

class _NavScreenState extends ConsumerState<NavScreen> {
  @override
  Widget build(BuildContext context) {
    final model = ref.watch(cartScreenProvider);
    //
    return Scaffold(
      body: widget.navigationShell,
      bottomNavigationBar: NavigationBar(
        indicatorColor: AppColors.white,
        backgroundColor: AppColors.white,
        selectedIndex: widget.navigationShell.currentIndex,
        onDestinationSelected: widget.navigationShell.goBranch,
        destinations: [
          NavigationDestination(
            icon: SvgPicture.asset('assets/svg/icon-home.svg'),
            label: 'Home',
          ),
          NavigationDestination(
            icon: model.items.isEmpty
                ? SvgPicture.asset('assets/svg/icon-cart.svg')
                : Badge.count(
                    backgroundColor: AppColors.badge,
                    count: model.items.length,
                    child: SvgPicture.asset('assets/svg/icon-cart.svg'),
                  ),
            label: 'Cart',
          ),
          NavigationDestination(
            icon: SvgPicture.asset('assets/svg/icon-fav.svg'),
            label: 'Favorites',
          ),
          NavigationDestination(
            icon: SvgPicture.asset('assets/svg/icon-user.svg'),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
