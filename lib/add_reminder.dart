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
          ),
          Padding(padding: EdgeInsets.all(10)),
          ListTile(
            title: Text(
              'Type of quotes:',
              style: GoogleFonts.lato(
                fontWeight: FontWeight.w300,
                fontSize: 11,
              ),
            ),
            subtitle: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(23),
              ),
              margin: EdgeInsets.symmetric(vertical: 5),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    items: <DropdownMenuItem>[
                      DropdownMenuItem(child: Text('Quote1')),
                      DropdownMenuItem(child: Text('Quote2')),
                      DropdownMenuItem(child: Text('Quote3'))
                    ],
                    onChanged: (val) {},
                  ),
                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          ListTile(
            title: Text(
              'Select Times:',
              style: GoogleFonts.lato(
                fontWeight: FontWeight.w300,
                fontSize: 11,
              ),
            ),
            subtitle: Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Row(
                children: [
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        onTap: () {
                          showDatePicker(context);
                        },
                        title: Text(
                          'Start Time:',
                          style: GoogleFonts.lato(
                            fontWeight: FontWeight.w300,
                            fontSize: 11,
                          ),
                        ),
                        subtitle: Text(
                          '9:00 am',
                          style: GoogleFonts.lato(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        trailing: Icon(Icons.timer),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        title: Text(
                          'End Time:',
                          style: GoogleFonts.lato(
                            fontWeight: FontWeight.w300,
                            fontSize: 11,
                          ),
                        ),
                        subtitle: Text(
                          '9:00 am',
                          style: GoogleFonts.lato(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        trailing: Icon(Icons.timer),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          ListTile(
            title: Text(
              'Select Week Days:',
              style: GoogleFonts.lato(
                fontWeight: FontWeight.w300,
                fontSize: 11,
              ),
            ),
            subtitle: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: Text(
                          'Mon',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                    height: 70,
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: Text(
                          'Tue',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                    height: 70,
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: Text(
                          'Wed',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                    height: 70,
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: Text(
                          'Thu',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                    height: 70,
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: Text(
                          'Fri',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                    height: 70,
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: Text(
                          'Sat',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                    height: 70,
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: Text(
                          'Sun',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                    height: 70,
                  ),
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          ListTile(
            title: Text(
              'Sound:',
              style: GoogleFonts.lato(
                fontWeight: FontWeight.w300,
                fontSize: 11,
              ),
            ),
            subtitle: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(23),
              ),
              margin: EdgeInsets.symmetric(vertical: 5),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    items: <DropdownMenuItem>[
                      DropdownMenuItem(child: Text('Sound1')),
                      DropdownMenuItem(child: Text('Sound2')),
                      DropdownMenuItem(child: Text('Sound3'))
                    ],
                    onChanged: (val) {},
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 40, horizontal: 15),
            child: AppButton(
              onTap: () {},
              title: 'Submit',
            ),
          )
        ],
      ),
    );
  }

  void showDatePicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 250,
          color: Colors.transparent,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Select Start Time',
                          style: GoogleFonts.lato(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.cancel),
                        onPressed: () {},
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  Expanded(
                    child: ListView.separated(
                      separatorBuilder: (context, index) => VerticalDivider(
                        width: 10,
                        thickness: 10,
                        color: Colors.white,
                      ),
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 10,
                          ),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.red,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red[100],
                          ),
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '9:00',
                                  style: GoogleFonts.lato(
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black45,
                                  ),
                                ),
                                Text(
                                  'am',
                                  style: GoogleFonts.lato(
                                    fontSize: 12,
                                    color: Colors.black45,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(20))
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
