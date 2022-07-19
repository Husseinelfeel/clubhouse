import 'package:clubhouse/data.dart';
import 'package:clubhouse/widgets/custom_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:clubhouse/models/room_model.dart';
import '../widgets/custom_user_profile_image.dart';

class RoomScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(
          Icons.search,
          color: Colors.black,
          size: 28,
        ),
        actions: [
          IconButton(
            icon: Icon(
              CupertinoIcons.envelope_open,
              color: Colors.black,
              size: 24,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              CupertinoIcons.calendar,
              color: Colors.black,
              size: 26,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              CupertinoIcons.bell,
              color: Colors.black,
              size: 26,
            ),
            onPressed: () {},
          ),
          GestureDetector(onTap: (){},
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: userProfileImage(size: 34,imageUrl: currentUser.imageURL),
            ),
          ),
        ],
      ),
      body:ListView(
        children: [
          ...roomList.map((e) => CustomCard( room:e)),   // with (... 3dots) we transfer roomlist to widget because listview take widgets only
        ],
      )

    );
  }
}
