import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../constants/movie_colors.dart';

class MovieDuration extends StatelessWidget {
  final String duration;

  const MovieDuration({super.key, required this.duration});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          PhosphorIcons.clock,
          color: MovieColors.black,
          size: 12.0,
        ),
        const SizedBox(width: 4),
        Text(
          "$duration",
          style: const TextStyle(
            fontSize: 12,
            color: MovieColors.black,
          ),
        ),
      ],
    );
  }
}
