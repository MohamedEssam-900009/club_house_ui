import 'package:flutter/material.dart';

class UserProfileImage extends StatelessWidget {
  final String imageUrl;
  final double size;

  const UserProfileImage({Key? key, required this.imageUrl, required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(size / 2 - size/10),
      child: Image.network(
        imageUrl,
        height: size,
        width: size,
        fit: BoxFit.cover,
      ),
    );
  }
}
