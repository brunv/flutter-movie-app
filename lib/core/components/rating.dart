import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_movie_app/core/constants/movie_colors.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class Rating extends StatelessWidget {
  final double rating;

  const Rating({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          PhosphorIcons.starFill,
          color: MovieColors.yellow,
          size: 12.0,
        ),
        SizedBox(width: 4),
        Text(
          "$rating/10 IMDb",
          style: const TextStyle(
            fontSize: 12,
            color: MovieColors.gray1,
          ),
        ),
      ],
    );
  }
}
