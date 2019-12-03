# flutter_password_strength

A password strength checker for flutter.

## Features  
  
 - Linear strength indicator.
 - Customise colors, borders, etc.

## Screenshot

![](https://media.giphy.com/media/kbuhBEahzQAtifnfSL/giphy.gif)

## Usage
  ```
    import 'package:flutter_password_strength/flutter_password_strength.dart';

    FlutterPasswordStrength(
      password: _password, 
      strengthCallback: (strength){
        debugPrint(strength.toString());
      }
    )
  ```

### Arguments

| Arguments  | Default  | Type | Description |
| :------------ |---------------:| :---------------| :-----|
| password | required | String | Password  |
| width | null | double | Strength bar width |
| height | 5 | double | Strength bar height |
| strengthColors | null | TweenSequence<Color> | `0.0 ~ 0.25 : red, 0.26 ~ 0.5 : yellow, 0.51 ~ 0.75 : blue, 0.76 ~ 1 : green` |
| backgroundColor | Colors.grey| Color | background for strength bar |
| radius | 0 | double | Strength bar radius  |
| duration | 3000 | Duration | Animation duration |
| strengthCallback | null | `void Function(double strength)` | Strength callback, return between 0 to 1 |