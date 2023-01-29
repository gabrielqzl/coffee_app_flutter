import 'package:coffee_app_flutter/provider/navigationbar_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../config_custom_fonts/coffee_icons.dart';

class CustomNavigationBarWidget extends StatelessWidget {
  const CustomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationBarProvider>(builder: ((context, value, child) {
      return NavigationBarTheme(
        data: const NavigationBarThemeData(
          indicatorColor: Colors.brown,
          // backgroundColor: Colors.red.shade100,
        ),
        child: NavigationBar(
          selectedIndex: value.currentPageIndex,
          onDestinationSelected: (int index) => value.pageIndex(index),
          destinations: [
            NavigationDestination(
                selectedIcon: const Icon(CoffeeIcons.home, color: Colors.white),
                icon: Icon(CoffeeIcons.home, color: Colors.brown.shade300),
                label: 'Home'),
            NavigationDestination(
                selectedIcon: const Icon(CoffeeIcons.cart, color: Colors.white),
                icon: Icon(CoffeeIcons.cart, color: Colors.brown.shade300),
                label: 'Locations'),
            NavigationDestination(
              selectedIcon:
                  const Icon(CoffeeIcons.profile, color: Colors.white),
              icon: Icon(
                CoffeeIcons.profile,
                color: Colors.brown.shade300,
              ),
              label: 'Profile',
            ),
          ],
        ),
      );
    }));
  }
}
