import 'package:flutter/material.dart';
import 'package:flutterapp/ui/widgets/empty_widget.dart';

class NotificationsView extends StatefulWidget {
  @override
  _NotificationsViewState createState() => _NotificationsViewState();
}

class _NotificationsViewState extends State<NotificationsView> {
  @override
  Widget build(BuildContext context) {
    return EmptyWidget(text: 'Notifications View');
  }
}