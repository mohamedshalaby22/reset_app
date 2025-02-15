import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import '../home/ui/screens/home_screen.dart';

class NavigationItem {
  final String label;
  final IconData icon;
  final Widget page;

  NavigationItem({required this.label, required this.icon, required this.page});
}

final List<NavigationItem> navigationItems = [
  NavigationItem(
    label: 'الرئيسية',
    icon: HugeIcons.strokeRoundedHome01,
    page: const HomeScreen(),
  ),
  NavigationItem(
    label: 'المفضلة',
    icon: HugeIcons.strokeRoundedFavourite,
    page: Container(color: Colors.green[200]),
  ),
  NavigationItem(
    label: 'حجوزاتي',
    icon: HugeIcons.strokeRoundedCalendar04,
    page: Container(color: Colors.blue[200]),
  ),
  NavigationItem(
    label: 'المحادثات',
    icon: HugeIcons.strokeRoundedMessage02,
    page: Container(color: Colors.yellow[200]),
  ),
  NavigationItem(
    label: 'المزيد',
    icon: HugeIcons.strokeRoundedMoreHorizontalSquare02,
    page: Container(color: Colors.purple[200]),
  ),
];
