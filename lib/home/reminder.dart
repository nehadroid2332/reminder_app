import 'package:flutter/material.dart';
import 'package:reminder_app/main.dart';
import 'package:reminder_app/utils/app_widgets.dart';

class ReminderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Reminders',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
          Padding(padding: EdgeInsets.all(20)),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Set up daily notifications for motivational quotes.',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 25)),
          Expanded(
            child: ListView.separated(
              itemCount: 10,
              separatorBuilder: (context, index) =>
                  Divider(color: Colors.transparent),
              itemBuilder: (context, index) {
                return Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(20),
                    trailing: CustomSwitch(
                      activeColor: Colors.red[200],
                      inactiveColor: Colors.grey[200],
                      value: false,
                      onChanged: (value) {
                        print("cal->$value");
                      },
                      activeText: 'ON',
                      inactiveText: 'OFF',
                    ),
                    leading: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.purple,
                      ),
                      width: 50,
                      height: 60,
                      alignment: Alignment.center,
                      child: Text(
                        '2x',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    title: Text(
                      'Love yourself and gratitude',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey,
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.all(3)),
                        Text(
                          '9:00am - 10:00pm',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(1),
                        ),
                        Text(
                          'Every Weekday',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
            child: AppButton(
              title: 'Add Reminder',
              onTap: () {
                Navigator.pushNamed(context, Screens.addReminder.toString());
              },
            ),
          )
        ],
      ),
    );
  }
}
