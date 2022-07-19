import 'package:clubhouse/screens/Invitation_screen.dart';
import 'package:clubhouse/screens/user_name_screen.dart';
import 'package:clubhouse/widgets/cstom_text.dart';
import 'package:clubhouse/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:clubhouse/utilities/colors.dart';

import '../utilities/constant.dart';

class FullNameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(top: 70 , right: outerPadding , left: outerPadding),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("What's your full name ?" , style: TextStyle(fontSize: 22),),
            SizedBox(height: 40,),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          hintText: "First Name"
                      ),

                    ),
                  ),
                ),
                SizedBox(width: 8,),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          hintText: "Last Name"
                      ),

                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 120,),
            CustomButton(ontap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_) => UserNameScreen()));
            }, text: "Next")


          ],
        ),
      ),
    );
  }
}
