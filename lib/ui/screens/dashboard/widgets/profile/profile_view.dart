import 'package:flutter/material.dart';
import 'package:flutterapp/ui/widgets/empty_widget.dart';

class ProfileView extends StatefulWidget {
  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return EmptyWidget(text: 'Profile View');
  }
}