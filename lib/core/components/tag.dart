import 'package:flutter/material.dart';
import 'package:flutter_movie_app/core/constants/movie_colors.dart';

class Tag extends StatelessWidget {
  final String title;

  const Tag({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
          color: MovieColors.blue3, borderRadius: BorderRadius.circular(50)),
      child: Text(
        title.toUpperCase(),
        style: const TextStyle(
          fontSize: 8,
          fontWeight: FontWeight.bold,
          color: MovieColors.blue2,
        ),
      ),
    );
  }
}
