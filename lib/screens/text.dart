import 'package:flutter/material.dart';
import 'package:paweena/screens/register.dart';

class TextPage extends StatefulWidget {
  final String valueFromRegPage,
      valueFromRegPage1,
      valueFromRegPage2,
      valueFromRegPage3;
  TextPage(
      {Key key,
      this.valueFromRegPage,
      this.valueFromRegPage1,
      this.valueFromRegPage2,
      this.valueFromRegPage3})
      : super(key: key);

  @override
  _TextPageState createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> {
  final String titleString = "กรุณาตรวจสอบข้อมูล";
  @override

  Widget confirm() {
    return Container(
      width: 250.0,
      child: RaisedButton.icon(
        icon: Icon(
          Icons.account_box,
          color: Colors.white,
        ),
        color: Colors.purple[400],
        label: Text('Confirm'),
        onPressed: () {
          var rount =
              MaterialPageRoute(builder: (BuildContext context) => RegisterPage());
          Navigator.of(context).push(rount);
        },
      ),
    );
  }

Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titleString),
      ),
      body: Text(
          "${widget.valueFromRegPage},\n${widget.valueFromRegPage1},\n${widget.valueFromRegPage2},\n${widget.valueFromRegPage3},\nbuttonRegis()"),
          
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
                  confirm(),
                ],
              ),
            ),
      ),
    );
  }
 
  
}
