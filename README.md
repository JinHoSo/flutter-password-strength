# flutter_password_strength

A password strength checker for flutter.

## Features  
  
 - linear strength indicator.
 - Customise colors, borders, etc.

## Usage
  ```
    import 'package:flutter_password_strength/flutter_password_strength.dart';

    AnimatedPasswordStrength(
      password: _password, 
      strengthCallback: (strength){
        debugPrint(strength.toString());
      }
    )
  ```


