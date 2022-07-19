import 'package:flutter/material.dart';

import '../screens/user_Auth.dart';
import '../utilities/colors.dart';

class CustomButton extends StatelessWidget {
  final Function ontap;
  final String text;
  final IconData? icon;

  const CustomButton({Key? key, required this.ontap, required this.text, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.only(left: 40.0, right: 40),
            child: Container(height: 45,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: AppColors.darkBlueColor,
      ),
              child: Center(
                child: InkWell(
      onTap: (){
        ontap();
      } ,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
                Text(
                  text,
                  style: TextStyle(
                      color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 4.0,
                ),
                Icon(
                  icon,
                  color: Colors.white,
                ),
        ],
      ),
    ),
              ),
            ),
          );
  }
}
