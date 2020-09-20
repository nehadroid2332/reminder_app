import 'package:flutter/material.dart';
import 'package:reminder_app/home.dart';

import 'add_reminder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        backgroundColor: Color.fromRGBO(243, 243, 243, 1.0),
        // canvasColor:  Colors.transparent,
      ),
      initialRoute: Screens.home.toString(),
      routes: {
        Screens.home.toString(): (context) => HomeScreen(),
        Screens.addReminder.toString(): (context) => AddReminderScreen()
      },
      home: HomeScreen(),
    );
  }
}

enum Screens { home, addReminder }
