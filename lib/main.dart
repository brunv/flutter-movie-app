import 'package:flutter/material.dart';
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
      body: Center(
        child: Row(
          children: [
            Container(
              height: 120,
              width: 85,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.network(
                  "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/uKvVjHNqB5VmOrdxqAt2F7J78ED.jpg",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(width: 16),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "The Last of Us",
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: MovieColors.black,
                  ),
                ),
                SizedBox(height: 10),
                Rating(rating: 6.7),
                SizedBox(height: 6),
                Row(
                  children: [
                    Tag(title: "Action"),
                    SizedBox(width: 8),
                    Tag(title: "Horror"),
                  ],
                ),
                SizedBox(height: 6),
                MovieDuration(duration: "1h 34m"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
