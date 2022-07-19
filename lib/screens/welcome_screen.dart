import 'package:clubhouse/screens/user_Auth.dart';
import 'package:clubhouse/utilities/colors.dart';
import 'package:clubhouse/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../widgets/cstom_text.dart';

class welcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "🎉 Welcome!",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(
              height: 24,
            ),
            CustomText(
                text:
                    "We\'re working hard to get Clubhouse ready for launch! While we wrap up the finishing touches, we\'re adding people gradually to make sure nothing breaks. :)"),
            SizedBox(
              height: 24,
            ),
            CustomText(
                text:
                    "If you don\'t yet have an invite, you can reserve your username now and we\'ll get you on very soon. We are so grateful you\'re here and can\'t wait to have you join! 🙏"),
            SizedBox(
              height: 24,
            ),
            CustomText(text: "🏠 Paul, Rohan & the Clubhouse team"),
            SizedBox(
              height: 24,
            ),
        CustomButton(
                      text: 'Get your username',
                      icon:  Icons.arrow_right_alt,
                      ontap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => userAuth()));
                      }
                      ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Have an invite text? Sign in",
                  style: TextStyle(color: AppColors.darkBlueColor),
                ),
                SizedBox(
                  width: 4.0,
                ),
                Icon(
                  (Icons.arrow_right_alt),
                  color: AppColors.darkBlueColor,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
