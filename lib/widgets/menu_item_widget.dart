import 'package:coffee_app_flutter/pages/preferences_page.dart';
import 'package:flutter/material.dart';

class MenuItemWidget extends StatelessWidget {
  const MenuItemWidget({Key? key, required this.name, required this.iconName})
      : super(key: key);
  final String name;
  final String iconName;
  final double height = 120;
  final TextStyle textStyle = const TextStyle(color: Color(0xff2d140d));
  final Icon iconArrow = const Icon(
    Icons.arrow_forward_ios,
    color: Color(0xffc69a80),
  );

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        print("Tap $name");
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const PreferencesPage()));
      },
      splashColor: Colors.brown.shade200,
      tileColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(vertical: 28, horizontal: 10),
      leading:
          SizedBox(width: 64, child: Image.asset('assets/icons/$iconName.png')),
      title: Text(name, style: textStyle),
      trailing: iconArrow,
    );
  }
}
