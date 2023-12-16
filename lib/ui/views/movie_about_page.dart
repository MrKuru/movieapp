import 'package:flutter/material.dart';
import 'package:movie_app/data/entity/movie.dart';

class AboutPage extends StatefulWidget {
  Movie movie;
  AboutPage({required this.movie});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.movie.name),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(widget.movie.name, style: const TextStyle(fontSize: 20),),
            Text(widget.movie.releaseDate, style: const TextStyle(fontSize: 20),),
            Text(widget.movie.category.name, style: const TextStyle(fontSize: 20),),
            Text(widget.movie.about, style: const TextStyle(fontSize: 20),),
          ],
        ),
      ),
    );
  }
}
