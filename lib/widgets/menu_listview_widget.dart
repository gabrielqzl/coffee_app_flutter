import 'package:flutter/material.dart';

import 'menu_item.dart';

class MenuListViewWidget extends StatelessWidget {
  const MenuListViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Menu'),
        centerTitle: true,
      ),
      body: ListView(
        children: const [
          MenuItemWidget(name: 'Espresso', iconName: 'espresso'),
          Divider(height: 1),
          MenuItemWidget(name: 'Cappuccino', iconName: 'cappuccino'),
          Divider(height: 1),
          MenuItemWidget(name: 'Macciato', iconName: 'macciato'),
          Divider(height: 1),
          MenuItemWidget(name: 'Mocha', iconName: 'mocha'),
          Divider(height: 1),
          MenuItemWidget(name: 'Latte', iconName: 'latte'),
          Divider(height: 1),
        ],
      ),
    );
  }
}
