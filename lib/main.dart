import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islame_route/ui/screens/home/home_screen.dart';
import 'package:islame_route/ui/screens/sura%20content/sura_content.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  String currentLocal = "en";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        AppLocalizations.delegate
      ],
      supportedLocales: [
        Locale('en'),
        Locale('ar'),
      ],
      locale: Locale(currentLocal),
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName : (_) => HomeScreen() ,
        SuraContent.routeName : (_) => SuraContent(),
      },
    );
  }
}


