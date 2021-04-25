import 'package:flutter/material.dart';

class EmptyWidget extends StatelessWidget {
  final String text;

  const EmptyWidget({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          text,
          style: Theme.of(context).textTheme.subtitle1,
        ),
      ),
    );
  }
}
