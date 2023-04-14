import 'package:animal_biogryphy/class_strings.dart';
import 'package:animal_biogryphy/textstyle.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final double opacity;

  CustomAppBar({Key, this.opacity = 0.8}) : super(key: Key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity,
      child: Container(
        padding: const EdgeInsets.only(top: 48, left: 16, right: 16),
        child: Row(
          children: <Widget>[
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: Strings.APP_NAME,
                    style: TextStyles.appNameTextStyle,
                  ),
                  TextSpan(text: "\n"),
                  TextSpan(
                    text: Strings.TAG_LINE,
                    style: TextStyles.tagLineTextStyle,
                  ),
                ],
              ),
            ),
            Spacer(),
            Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
