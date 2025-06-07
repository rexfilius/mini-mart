import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mini_mart/config/theme/app_colors.dart';
import 'package:mini_mart/modules/nav_screen/nav_destination.dart';

class NavScreen extends ConsumerStatefulWidget {
  const NavScreen({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _NavScreenState();
}

class _NavScreenState extends ConsumerState<NavScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.navigationShell,
      bottomNavigationBar: NavigationBar(
        indicatorColor: AppColors.white,
        backgroundColor: AppColors.white,
        selectedIndex: widget.navigationShell.currentIndex,
        onDestinationSelected: widget.navigationShell.goBranch,
        destinations: navDestinations.map((destination) {
          return NavigationDestination(
            icon: destination.icon,
            label: destination.label,
            selectedIcon: destination.icon,
          );
        }).toList(),
      ),
    );
  }
}
