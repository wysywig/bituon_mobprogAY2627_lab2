import 'package:flutter/material.dart';

class PostImage extends StatelessWidget {
  final String imagePath;

  const PostImage({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(
        imagePath,
        width: double.infinity,
        height: 250,
        fit: BoxFit.cover,
      ),
    );
  }
}