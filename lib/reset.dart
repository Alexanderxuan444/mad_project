import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class PinCode extends StatefulWidget {
  @override
  _PinCodeState createState() => _PinCodeState();
}

class _PinCodeState extends State<PinCode> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Container(
              child: PinCodeTextField(
                pinBoxWidth: 55,
                pinBoxHeight: 55,
                autofocus: true,
                controller: _textEditingController,
                maxLength: 4,
                highlight: true,
                hasUnderline: true,
                hideCharacter: true,
                pinBoxColor: Colors.redAccent,
                highlightPinBoxColor: Colors.white,
                onDone: (text) {
                  print(_textEditingController);
                },
                highlightColor: Colors.greenAccent,
                defaultBorderColor: Colors.black,
                hasTextBorderColor: Colors.greenAccent,
                maskCharacter: "*",
              ),
            ),
          ),
          SizedBox(height: 30.0),
          Container(
            width: 100.0,
            height: 40.0,
            child: Material(
              // borderRadius: BorderRadius.circular(20.0),
              shadowColor: Colors.lightBlue[300],
              color: Colors.greenAccent,
              elevation: 7.0,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/app');
                },
                child: Center(
                  child: Text(
                    'RESET',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat'),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
