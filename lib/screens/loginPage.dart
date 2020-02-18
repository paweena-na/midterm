import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final String titleString = "ยินดีต้อนรับ";

  Widget text() {
    return Container(
      width: 250.0,
      child: TextFormField(
        decoration: InputDecoration(
            icon: Icon(
              Icons.add_call,
              size: 36.0,
              color: Colors.purple[600],
            ),
            labelText: 'Enter value X'),
      ),
    );
  }
  Widget text1() {
    return Container(
      width: 250.0,
      child: TextFormField(
        decoration: InputDecoration(
            icon: Icon(
              Icons.add_to_photos,
              size: 36.0,
              color: Colors.purple[600],
            ),
            labelText: 'Enter value Y'),
      ),
    );
  }

  Widget calculator() {
    return Container(
      width: 250.0,
      child: RaisedButton.icon(
        icon: Icon(
          Icons.account_box,
          color: Colors.white,
        ),
        color: Colors.purple[400],
        label: Text('Calculator'),
        onPressed: () {
          var rount =
              MaterialPageRoute(builder: (BuildContext context) => LoginPage());
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
                  calculator(),
                ],
              ),
            ),
      ),
    );
  }
}
