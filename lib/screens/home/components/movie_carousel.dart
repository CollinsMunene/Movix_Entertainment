import 'package:flutter/material.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/screens/details/details_screen.dart';

class IteCard extends StatelessWidget {
  final Movie movie;
  const IteCard({
    Key key,
    this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
           context,
           MaterialPageRoute(
             builder: (context) => DetailsScreen(movie:movie),
            ),
      ),
      child: Column(
        children: <Widget> [
          Expanded(
           child: Container(
             child: ClipRRect(
               borderRadius: BorderRadius.circular(16.0),
               child: Image.asset(movie.poster, fit: BoxFit.fill)
             ),
           ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child: Text(movie.title),
          ),
        ],
        ),
      );
  }
}
