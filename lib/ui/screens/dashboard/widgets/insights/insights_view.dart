import 'package:flutter/material.dart';
import 'package:flutterapp/ui/widgets/empty_widget.dart';

class InsightsView extends StatefulWidget {
  @override
  _InsightsViewState createState() => _InsightsViewState();
}

class _InsightsViewState extends State<InsightsView> {
  @override
  Widget build(BuildContext context) {
    return EmptyWidget(text: 'Insights View');
  }
}
