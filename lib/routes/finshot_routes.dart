import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:finshot/screens/home.dart';
import 'package:finshot/main.dart';
import 'package:finshot/screens/login.dart';

List<GetPage> routes = [
  GetPage(name: '/', page: () => LoginScreen()),
  GetPage(
    name: '/home',
    page: () => HomeConnector(),
  )
];
