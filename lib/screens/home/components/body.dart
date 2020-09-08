import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/screens/home/components/categories.dart';
import 'package:movie_app/screens/home/components/genres.dart';


import 'package:movie_app/screens/home/components/movie_carousel.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget> [
          Categorylist(),
          Genres(),
          SizedBox(height: kDefaultPadding),
          Expanded(
              child: Padding(
                
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: GridView.builder(
                  itemCount: movies.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: kDefaultPadding,
                      crossAxisSpacing: kDefaultPadding,
                      childAspectRatio: 0.5,
                    ),
                    itemBuilder: (context, index) =>
                        IteCard(movie: movies[index])
                 ),
              ),
              ),
        ],
    );
  }
}
