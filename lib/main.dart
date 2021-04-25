import 'package:flutter/material.dart';
import 'package:flutterapp/config/config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.app_title,
      theme: AppTheme.of(context),
      initialRoute: Routes.initial,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
