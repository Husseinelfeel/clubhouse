import 'package:clubhouse/screens/full_name_screen.dart';
import 'package:clubhouse/widgets/cstom_text.dart';
import 'package:clubhouse/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class InvitationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              '🎉 Welcome to Clubhouse.\nYou\'re Hussein Elfeel\'s friend!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(
              height: 50,
            ),
            Image.asset(
              'images/hussein.jpg',
              width: 175,
              height: 175,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 4,
            ),
            Text("Hussein"),
            SizedBox(
              height: 50,
            ),
            Text(
              "Let\'s set up your profile?",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 25,
            ),
            CustomButton(
              ontap: () {},
              text: "🐋 Import from whale",
            ),
            SizedBox(
              height: 25,
            ),

            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => FullNameScreen()));
              },
              child: Text("Enter my info manually" , style: TextStyle(color: Color(0xff5B75A6)),),
            )


          ],
        ),
      ),
    );
  }
}
