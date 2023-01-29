import 'dart:developer';

import 'package:coffee_app_flutter/pages/menu_page.dart';
import 'package:coffee_app_flutter/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/splash_background.png'),
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Image.asset(
              'assets/images/coffee_logo.png',
              scale: 2,
            )),
            const SizedBox(height: 16),
            PrimaryButton(
              title: 'Go to the Menu',
              onPressedBtn: () {
                log('Great Menu ');
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MenuPage()));
              },
              width: MediaQuery.of(context).size.width * 0.80,
            ),
          ],
        ),
      ),
    );
  }
}
