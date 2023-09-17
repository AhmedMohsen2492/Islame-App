import 'package:flutter/material.dart';
import 'package:islame_route/ui/screens/home/home_screen.dart';
import 'package:islame_route/ui/screens/sura%20content/sura_content.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName : (_) => HomeScreen() ,
        SuraContent.routeName : (_) => SuraContent(),
      },
    );
  }
}
