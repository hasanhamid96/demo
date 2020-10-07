import 'package:demo/providers/souret.dart';
import 'package:demo/screens/details_sourt_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
        value: Sourets()),
        ChangeNotifierProvider.value(
            value: Souret()),
      ],

        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(

            primarySwatch: Colors.blue,

            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          routes: {
            DetailsSourtScreen.routeName:(ctx)=>DetailsSourtScreen()
          },
          home: HomeScreen(),
        ),
    );
  }
}

