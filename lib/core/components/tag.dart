import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_movie_app/core/constants/movie_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class Tag extends StatelessWidget {
  final String title;

  const Tag({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        title.toUpperCase(),
        style: const TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.bold,
          color: MovieColors.blue2,
        ),
      ),
      backgroundColor: MovieColors.blue3,
    );
  }
}
