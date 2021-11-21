import 'package:flutter/material.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  _homescreenState createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Stay Calm",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 60.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                color: Colors.greenAccent,
              ),
            ),
            Text(
              "and",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 60.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                color: Colors.greenAccent,
              ),
            ),
            Text(
              "Take a deep breath",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 60.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.5,
                color: Colors.greenAccent
              ),
            ),

            //COUNTRY NAME??

            //POLICE NUMBER DISPLAY
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 15.0,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.local_police_sharp,
                  color: Colors.red,
                ),
                title: Text(
                  'Police'+' 100',
                  style: TextStyle(
                    color: Colors.teal,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),

            //AMBULANCE NUMBER DISPLAY
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 15.0,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.local_hospital,
                  color: Colors.red,
                ),
                title: Text(
                  'Ambulance'+' 112',
                  style: TextStyle(
                    color: Colors.teal,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),

            //FireStation Number Display
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 15.0,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.local_fire_department_sharp,
                  color: Colors.red,
                ),
                title: Text(
                  'Fire Station'+' 101',
                  style: TextStyle(
                    color: Colors.teal,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
