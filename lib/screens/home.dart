import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';

class HomeConnector extends StatelessWidget {
  const HomeConnector({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text('lead'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Column(
          children: [
            Text('this is text1'),
            RaisedButton(
                child: Text("go to Login"),
                onPressed: () {
                  Get.toNamed('/');
                }),
          ],
        ),
        color: Colors.yellow,
      ),
    );
  }
}
