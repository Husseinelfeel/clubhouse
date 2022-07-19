import 'package:flutter/material.dart';

import '../utilities/constant.dart';
import '../widgets/custom_button.dart';
class UserNameScreen extends StatelessWidget {
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
            Text("What's your  username ?" , style: TextStyle(fontSize: 22),),
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
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          hintText: "@username"
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
