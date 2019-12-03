import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'password_field.dart';
import '../flutter_password_strength/flutter_password_strength.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();

  String _password;

  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 30.0),
        child: Form(
            key: _formKey,
            child: Column(children: <Widget>[
              PasswordField(onChanged: (value) {
                setState(() {
                  _password = value;
                });
              }, onSaved: (value) {
                setState(() {
                  _password = value;
                });
              }),
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: FlutterPasswordStrength(
                    password: _password,
                    strengthCallback: (strength) {
                      debugPrint(strength.toString());
                    },
                  )),
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: FlutterPasswordStrength(
                      password: _password, width: 100)),
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: FlutterPasswordStrength(
                    password: _password,
                    width: 200,
                    height: 30,
                    radius: 15,
                  )),
            ])));
  }
}
