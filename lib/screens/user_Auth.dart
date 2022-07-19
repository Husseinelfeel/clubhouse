import 'package:clubhouse/screens/Invitation_screen.dart';
import 'package:clubhouse/widgets/cstom_text.dart';
import 'package:clubhouse/widgets/custom_button.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:clubhouse/utilities/colors.dart';

class userAuth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: AppColors.darkBlueColor,
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [

            Center(child: CustomText(text: 'Enter your phone #'),),

           SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Container(color: Colors.white,
                child: Row(children: [
                CountryCodePicker(
                onChanged: print,
    // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
    initialSelection: 'EG',
    favorite: ['+39','FR'],
    // optional. Shows only country name and flag
    showCountryOnly: false,
    // optional. Shows only country name and flag when popup is closed.
    showOnlyCountryWhenClosed: false,
    // optional. aligns the flag and the Text left
    alignLeft: false,
    ),
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: 'Phone Number',
                        border: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,

                      ),
                    ),
                  ),
                ],),
              ),
            ),
            SizedBox(height: 220,),
    Text("By entering your number, you\'re agreeing to out\nTerms or Services and Privacy Policy. Thanks!",
    style: TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.bold,
    ),),
    SizedBox(height: 40,),
    CustomButton(text: 'Next',icon: Icons.arrow_right_alt, ontap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => InvitationScreen()));
    },

    ),


    ],
    ),
      ),

    );
  }
}
