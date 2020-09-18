import 'package:flutter/material.dart';
import 'package:reminder_app/home/reminder.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: ReminderScreen()),
      bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30)),
            boxShadow: [
              BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            child: BottomNavigationBar(
              currentIndex: 0,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.red,
              onTap: (index) {},
              type: BottomNavigationBarType.fixed,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Icon(Icons.chat_bubble_outline),
                    title: Text('Quotes')),
                BottomNavigationBarItem(
                    icon: Icon(Icons.bookmark_border), title: Text('Bookmark')),
                BottomNavigationBarItem(
                    icon: Icon(Icons.timer), title: Text('Reminders')),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite), title: Text('Topic'))
              ],
            ),
          )),
    );
  }
}
