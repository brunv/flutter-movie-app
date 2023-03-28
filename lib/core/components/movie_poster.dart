import 'package:flutter/material.dart';

class MoviePoster extends StatelessWidget {
  const MoviePoster({
    Key? key,
    required this.height,
    required this.width,
    required this.src,
  }) : super(key: key);

  final double height;
  final double width;
  final String src;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Image.network(
          src,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
