import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterapp/config/rouets.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Center(
        child: Text(
          'Flutter App Task',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }

  _startTime() {
    return Timer(Duration(seconds: 3), _navigationPage);
  }

  void _navigationPage() {
    Navigator.pushReplacementNamed(context, Routes.dashboard);
  }
}
