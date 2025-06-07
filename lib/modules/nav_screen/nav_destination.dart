import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavDestination {
  final String label;
  final Widget icon;

  const NavDestination({required this.label, required this.icon});
}

final navDestinations = [
  NavDestination(
    label: 'Home',
    icon: SvgPicture.asset('assets/svg/icon-home.svg'),
  ),
  NavDestination(
    label: 'Cart',
    icon: SvgPicture.asset('assets/svg/icon-cart.svg'),
  ),
  NavDestination(
    label: 'Favorites',
    icon: SvgPicture.asset('assets/svg/icon-fav.svg'),
  ),
  NavDestination(
    label: 'Profile',
    icon: SvgPicture.asset('assets/svg/icon-user.svg'),
  ),
];
