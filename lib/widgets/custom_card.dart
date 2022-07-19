import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/room_model.dart';


class CustomCard extends StatelessWidget {
  final Room room;

  const CustomCard({Key? key,required this.room}) : super(key: key);

  @override



  Widget build(BuildContext context) {
    return Card(
     color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('${room.club} '.toUpperCase()),
          Text(room.name),

        ],
      ),
    );
  }
}
