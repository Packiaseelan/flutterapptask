import 'package:flutter/material.dart';

class SubTitleWidget extends StatelessWidget {
  final String title;
  final String subTitle;

  const SubTitleWidget({
    Key key,
    this.title,
    this.subTitle = '',
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: Theme.of(context).textTheme.headline3,),
            Text(subTitle, style: Theme.of(context).textTheme.headline3,),
          ],
        ),
      ),
    );
  }
}
