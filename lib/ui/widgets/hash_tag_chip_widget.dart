import 'package:flutter/material.dart';
import 'package:flutterapp/config/config.dart';

class HashTagChipWidget extends StatelessWidget {
  final String text;
  final bool isCloseVisible;
  final Function onTap;
  final Function onClose;

  const HashTagChipWidget({
    Key key,
    this.text,
    this.isCloseVisible = false,
    this.onTap,
    this.onClose,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppTheme.chipColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Row(
                children: [
                  Text(
                    '#$text',
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  if (isCloseVisible)
                    InkWell(
                      onTap: onClose,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Icon(Icons.close),
                      ),
                    )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
