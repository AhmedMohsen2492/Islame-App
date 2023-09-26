import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islame_route/provider/setting_provider.dart';
import 'package:islame_route/ui/screens/home/home_screen.dart';
import 'package:islame_route/ui/screens/sura%20content/sura_content.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islame_route/ui/utils/app_theme.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp( ChangeNotifierProvider(
      create: (_)=> SettingProvider(),
      child: MyApp()
    )
  );
}


class MyApp extends StatelessWidget {

  Widget build(BuildContext context) {
    SettingProvider provider = Provider.of(context);
    return MaterialApp(
      themeMode: provider.currentTheme,
      darkTheme: AppTheme.darkTheme,
      theme: AppTheme.lightTheme,
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
      locale: Locale(provider.currentLocal),
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName : (_) => HomeScreen() ,
        SuraContent.routeName : (_) => SuraContent(),
      },
    );
  }
}


