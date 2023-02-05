import 'package:coffee_app_flutter/provider/navigationbar_provider.dart';
import 'package:coffee_app_flutter/widgets/custom_navigationbar_widget.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../widgets/menu_listview_widget.dart';

class MenuPage extends StatelessWidget {
  MenuPage({super.key});

  final List pagesList = [
    // MenuListViewWidget
    const MenuListViewWidget(),

    Container(
      color: Colors.green,
      alignment: Alignment.center,
      child: const Text('Page 2'),
    ),
    Container(
      color: Colors.blue,
      alignment: Alignment.center,
      child: const Text('Page 3'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<NavigationBarProvider>(
        builder: (context, value, child) {
          return pagesList[value.currentPageIndex];
        },
      ),
      bottomNavigationBar: const CustomNavigationBarWidget(),
    );
  }
}
