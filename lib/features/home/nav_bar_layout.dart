import 'package:flutter/material.dart';
import 'package:marketi/core/theme/app_styles.dart';
import 'package:marketi/features/home/cart_screen.dart';
import 'package:marketi/features/home/faviorte_screen.dart';
import 'package:marketi/features/home/home_screen.dart';
import 'package:marketi/features/home/settings_screen.dart';

class NavBarLayout extends StatefulWidget {
  const NavBarLayout({super.key});

  @override
  State<NavBarLayout> createState() => _NavBarLayoutState();
}

class _NavBarLayoutState extends State<NavBarLayout> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: bottomNavBar(),
      ),
    );
  }

  BottomNavigationBar bottomNavBar() {
    return BottomNavigationBar(
      elevation: 20,
      items: bottomNavigationBar,
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: const Color(0xFF67687E),
      selectedItemColor: Colors.blue,
      iconSize: 28,
      currentIndex: currentIndex,
      backgroundColor: Colors.white,
      mouseCursor: SystemMouseCursors.none,
      selectedLabelStyle: AppStyles.style12Medium,
      unselectedLabelStyle: AppStyles.style12Regular,
      landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
      enableFeedback: true,
      onTap: (value) {
        setState(() {
          currentIndex = value;
        });
      },
    );
  }

  List<Widget> screens = [
    const HomeScreen(),
    const FaviorteScreen(),
    const CartScreen(),
    const SettingsScreen(),
  ];

  List<BottomNavigationBarItem> bottomNavigationBar = [
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.favorite), label: 'Faviorte'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.sell_outlined), label: 'Cart'),
    const BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
  ];
}
