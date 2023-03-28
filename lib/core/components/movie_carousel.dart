import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_movie_app/core/components/movie_poster.dart';
import 'package:flutter_movie_app/core/components/rating.dart';
import 'package:flutter_movie_app/core/constants/movie_colors.dart';

class MovieCarousel extends StatelessWidget {
  const MovieCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 283,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 7,
        itemBuilder: ((context, index) {
          return Row(
            children: [
              SizedBox(width: index == 0 ? 24 : 0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MoviePoster(
                    height: 212,
                    width: 143,
                    src:
                        "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/uKvVjHNqB5VmOrdxqAt2F7J78ED.jpg",
                  ),
                  SizedBox(height: 12),
                  Text(
                    "The Last of Us",
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: MovieColors.black,
                    ),
                  ),
                  SizedBox(height: 8),
                  Rating(rating: 8.9),
                ],
              ),
              SizedBox(width: index == 7 - 1 ? 24 : 0),
            ],
          );
        }),
        separatorBuilder: ((context, index) => const SizedBox(width: 16)),
      ),
    );
  }
}
