import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PasswordField extends StatefulWidget {
  final Function onSaved;
  final Function onChanged;

  PasswordField({Key key, @required this.onSaved, @required this.onChanged})
      : super(key: key);

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  String _password;
  bool _isPasswordDirty = false;

  String validatePassword(String value) {
    if (value.isEmpty) {
      return 'enter password.';
    }

    if (value.length < 4)
      return 'too short.';
    else
      return null;
  }

  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.text,
      obscureText: true,
      validator: validatePassword,
      autovalidate: _isPasswordDirty,
      onChanged: (value) {
        setState(() {
          _isPasswordDirty = true;
        });

        widget.onChanged(value);
      },
      onSaved: (value) {
        setState(() {
          _password = value;
        });

        widget.onSaved(value);
      },
      decoration: InputDecoration(
          helperText: 'required',
          labelText: 'Password'),
    );
  }
}
