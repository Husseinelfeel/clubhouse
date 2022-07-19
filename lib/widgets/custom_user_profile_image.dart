
import 'package:flutter/material.dart';

import '../data.dart';

class userProfileImage extends StatelessWidget {

  final String imageUrl;
  final double size;
  const userProfileImage({required this.size,required this.imageUrl,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular (size/2 - size/10),
      child: Image.network(
        imageUrl,
        width: size,
        height: size,
        fit: BoxFit.cover,
      ),
    );
  }
}
