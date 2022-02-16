import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:finshot/screens/home.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';

const users = const {
  'a@a.com': '1234',
  'hunter@gmail.com': 'hunter',
  'dkprajapat1212@gmail.com': '1'
};

class LoginScreen extends StatelessWidget {
  Duration get loginTime => Duration(milliseconds: 2250);

  Future<String> _authUser(LoginData data) {
    print('Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(data.name)) {
        return 'User not exists';
      }
      if (users[data.name] != data.password) {
        return 'Password does not match';
      }
      return null;
    });
  }

  Future<String> _recoverPassword(String name) {
    print('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'User not exists';
      }
      return null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: '',
      logo: 'assets/images/finshot_logo.png',
      onLogin: _authUser,
      onSignup: _authUser,
      onSubmitAnimationCompleted: () {
        Get.toNamed('/home');
      },
      onRecoverPassword: _recoverPassword,
    );
  }
}
