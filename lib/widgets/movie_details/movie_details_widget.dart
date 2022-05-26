import 'package:flutter/material.dart';
import 'package:movie/widgets/movie_details/movie_details_info_widget.dart';

import 'actors_widget.dart';

class MovieDetailsWidget extends StatefulWidget {
  final int id;
  const MovieDetailsWidget({Key? key, required this.id}) : super(key: key);

  @override
  State<MovieDetailsWidget> createState() => _MovieDetailsWidgetState();
}

class _MovieDetailsWidgetState extends State<MovieDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(3, 37, 65, 1),
      appBar: AppBar(
        title: Text('Зверополис'),
      ),
      body: ListView(
        children: [
          MovieDetailsInfoWidget(),
          ActorsWidget(),
        ],
      ),
    );
  }
}
