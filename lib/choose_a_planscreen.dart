import 'package:animal_biogryphy/class_strings.dart';
import 'package:animal_biogryphy/custom_appbar.dart';
import 'package:animal_biogryphy/dash_board_screen.dart';
import 'package:animal_biogryphy/subscription%20container.dart';
import 'package:animal_biogryphy/textstyle.dart';
import 'package:flutter/material.dart';

class ChoosePlanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFB98959),
        body: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CustomAppBar(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 24),
                  child: Text(
                    Strings.chooseAPlan,
                    style: TextStyles.headingTextStyle,
                  ),
                ),
                SubscriptionContainer(
                  key: UniqueKey(),
                  text: Strings.weekSubscription,
                  amount: "1.99",
                  imagePath: "assets/t.jpg",
                ),
                SubscriptionContainer(
                  key: UniqueKey(),
                  text: Strings.oneMonthSubscription,
                  amount: "4.39",
                  imagePath: "assets/monthly.jpg",
                ),
                SubscriptionContainer(
                  key: UniqueKey(),
                  text: Strings.threeMonthSubscription,
                  amount: "9.99",
                  imagePath: "assets/3monthly.jpg",
                ),
                SubscriptionContainer(
                  key: UniqueKey(),
                  text: Strings.sixMonthSubscription,
                  amount: "13",
                  imagePath: "assets/re.jpg",
                ),
              ],
            ),
            Positioned(
              bottom: 48,
              left: 16,
              child: Text(Strings.LAST_STEP_TO_ENJOY,
                  style: TextStyles.buttonTextStyle),
            ),
            Positioned(
              bottom: -30,
              right: -30,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => DashboardScreen(),
                    ),
                  );
                },
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFDAD4CC).withOpacity(0.8),
                  ),
                  child: Align(
                    alignment: Alignment(-0.4, -0.4),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
