import 'package:flutter/material.dart';
import 'package:paweena/screens/loginPage.dart';
import 'package:paweena/screens/register.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
 
  Widget emailText() {
    return Container(
      width: 250.0,
      child: TextFormField(
        decoration: InputDecoration(
            icon: Icon(
              Icons.email,
              size: 36.0,
              color: Colors.purple[600],
            ),
            labelText: 'Username',
            hintText: 'your@email.com'),
      ),
    );
  }

  
  Widget passwordText() {
    return Container(
      width: 250.0,
      child: TextFormField(
        decoration: InputDecoration(
            icon: Icon(
              Icons.vpn_key,
              size: 36.0,
              color: Colors.purple[600],
            ),
            labelText: 'Password',
            hintText: 'Mode 6 character'),
      ),
    );
  }

  Widget buttonRegis() {
    return Container(
      width: 250.0,
      child: RaisedButton.icon(
        icon: Icon(
          Icons.account_circle,
          color: Colors.white,
        ),
        color: Colors.purple[400],
        label: Text('Login'),
        onPressed: () {
          var rount =
              MaterialPageRoute(builder: (BuildContext context) => LoginPage());
          Navigator.of(context).push(rount);
        },
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
              MaterialPageRoute(builder: (BuildContext context) =>RegisterPage());
          Navigator.of(context).push(rount);
        },
      ),
    );
  }

  Widget showAdddress() {
    return Text(
      'Robot Lawn Mower',
      style: TextStyle(
          fontSize: 28.0,
          fontWeight: FontWeight.bold,
          color: Colors.purple[300],
          fontStyle: FontStyle.italic),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.purple[50],
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/background.jpg'),
                  fit: BoxFit.cover),
            ),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  showAdddress(),
                  emailText(),
                  passwordText(),
                  buttonRegis(),
                  buttonsRegis(),
                ],
              ),
            ),
          ),
        ));
  }
}
