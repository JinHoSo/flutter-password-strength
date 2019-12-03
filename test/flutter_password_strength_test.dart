import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_password_strength/flutter_password_strength.dart';

void main() {
  test('calculate password strength', () {
    String password = 'jkdf928n8@0#@ijds!';
    
    FlutterPasswordStrength(password: password, strengthCallback: (strength){
      expect(strength > 0.9, true);
    });
  });
}
