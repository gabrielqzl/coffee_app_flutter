import 'package:coffee_app_flutter/provider/navigationbar_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// import 'pages/home_page.dart';
import 'pages/menu_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NavigationBarProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Coffee App',
        theme: ThemeData(
            useMaterial3: true,
            scaffoldBackgroundColor: Colors.amber.shade200,
            // primarySwatch: Colors.brown,
            // splashColor: Colors.brown.shade200,
            appBarTheme: const AppBarTheme(
              titleTextStyle: TextStyle(
                  color: Color(0xff8C746A), fontWeight: FontWeight.bold),
            )),
        // home: const HomePage(),
        home: MenuPage(),
      ),
    );
  }
}
