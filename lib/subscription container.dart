import 'package:animal_biogryphy/textstyle.dart';
import 'package:flutter/material.dart';

class SubscriptionContainer extends StatelessWidget {
  final String amount, text, imagePath;

  const SubscriptionContainer({
    required Key key,
    required this.amount,
    required this.text,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5),
                BlendMode.srcATop,
              ),
              child: Image.asset(
                imagePath,
                height: height * 0.6 / 4,
                width: 370,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            left: 28,
            right: 40,
            child: Row(
              children: <Widget>[
                Text(
                  text,
                  style: TextStyles.subscriptionTextStyle,
                ),
                Spacer(),
                Text(
                  "\$$amount",
                  style: TextStyles.subscriptionAmountTextStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
