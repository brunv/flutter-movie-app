import 'package:flutter/material.dart';
import 'package:flutter_movie_app/core/components/movie_carousel.dart';
import 'package:flutter_movie_app/core/components/movie_showcase.dart';
import 'package:flutter_movie_app/core/components/rating.dart';
import 'package:flutter_movie_app/core/components/tag.dart';
import 'package:flutter_movie_app/my_widget.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/components/movie_duration.dart';
import 'core/constants/movie_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        textTheme: GoogleFonts.mulishTextTheme(),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: GoogleFonts.merriweather(
            fontSize: 16,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 24,
                horizontal: 0,
              ),
              child: MovieCarousel(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MovieShowcase(
                title: "The Last of Us",
                imgSource:
                    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/uKvVjHNqB5VmOrdxqAt2F7J78ED.jpg",
                rating: 7.9,
                duration: "1h 23m",
                genres: ["Horror", "Action"],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
