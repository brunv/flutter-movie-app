import 'package:flutter/material.dart';
import 'package:flutter_movie_app/core/components/movie_duration.dart';
import 'package:flutter_movie_app/core/components/movie_poster.dart';
import 'package:flutter_movie_app/core/components/rating.dart';
import 'package:flutter_movie_app/core/components/tag.dart';
import 'package:flutter_movie_app/core/constants/movie_colors.dart';

class MovieShowcase extends StatelessWidget {
  final String title;
  final String imgSource;
  final double rating;
  final String duration;
  final List<String> genres;

  const MovieShowcase({
    Key? key,
    required this.title,
    required this.imgSource,
    required this.rating,
    required this.duration,
    required this.genres,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MoviePoster(
          height: 120,
          width: 85,
          src: imgSource,
        ),
        SizedBox(width: 16),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: MovieColors.black,
              ),
            ),
            SizedBox(height: 8),
            Rating(rating: rating),
            SizedBox(height: 8),
            Row(
              children: [
                Tag(title: "Action"),
                SizedBox(width: 8),
                Tag(title: "Horror"),
              ],
            ),
            SizedBox(height: 8),
            MovieDuration(duration: duration),
          ],
        ),
      ],
    );
  }
}
