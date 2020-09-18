import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'utils/app_widgets.dart';

class AddReminderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 243, 243, 1.0),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Color.fromRGBO(243, 243, 243, 1.0),
        title: Text('Add Reminder',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            )),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          ListTile(
            title: Text(
              'How many Times:',
              style: GoogleFonts.lato(
                fontWeight: FontWeight.w300,
                fontSize: 11,
              ),
            ),
            subtitle: SliderTheme(
              data: SliderTheme.of(context).copyWith(
                thumbShape: CustomSliderThumbCircle(
                  thumbRadius: 20,
                ),
                thumbColor: Colors.white,
                valueIndicatorColor: Colors.white,
              ),
              child: Slider(
                value: 0.5,
                onChanged: (val) {},
                label: 'adf d',
                activeColor: Colors.red[400],
                inactiveColor: Colors.grey[400],
              ),
            ),
          )
        ],
      ),
    );
  }
}
