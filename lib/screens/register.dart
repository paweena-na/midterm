import 'package:flutter/material.dart';
import 'package:paweena/screens/text.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final String titleString = "ลงทะเบียนเข้าใช้งานระบบ";

  Widget text() {
    return Container(
      width: 250.0,
      child: TextFormField(
        decoration: InputDecoration(
            icon: Icon(
              Icons.add_circle_outline,
              size: 36.0,
              color: Colors.purple[600],
            ),
            labelText: 'Enter Name and Surname'),
      ),
    );
  }

  Widget text1() {
    return Container(
      width: 250.0,
      child: TextFormField(
        decoration: InputDecoration(
            icon: Icon(
              Icons.email,
              size: 36.0,
              color: Colors.purple[600],
            ),
            labelText: 'Username'),
      ),
    );
  }

Widget text2() {
    return Container(
      width: 250.0,
      child: TextFormField(
        decoration: InputDecoration(
            icon: Icon(
              Icons.add_call,
              size: 36.0,
              color: Colors.purple[600],
            ),
            labelText: 'Password'),
      ),
    );
  }

  Widget text3() {
    return Container(
      width: 250.0,
      child: TextFormField(
        decoration: InputDecoration(
            icon: Icon(
              Icons.airline_seat_individual_suite,
              size: 36.0,
              color: Colors.purple[600],
            ),
            labelText: 'TelePhone'),
      ),
    );
  }

   Widget buttonsRegis() {
    return Container(
      width: 250.0,
      child: RaisedButton.icon(
        icon: Icon(
          Icons.add_box,
          color: Colors.white,
        ),
        color: Colors.purple[400],
        label: Text('Register'),
        onPressed: () {
          var rount =
              MaterialPageRoute(builder: (BuildContext context) =>text());
          Navigator.of(context).push(rount);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titleString),
      ),
      body: Container(
        decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/background.jpg'),
                  fit: BoxFit.cover),
            ),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  text(),
                  text1(),
                  text2(),
                  text3(),
                  buttonsRegis(),
                ],
              ),
        ),
      ),
    );
  }
}
