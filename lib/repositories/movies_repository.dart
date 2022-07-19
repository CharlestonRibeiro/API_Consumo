// ignore_for_file: unused_local_variable, depend_on_referenced_packages

import 'dart:convert';

import 'package:http/http.dart' as http;
import '../models/movies.dart';

class MoviesRepository {
  Future<List<Movie>> findAll() async {
    final moviesResponse =
        await http.get(Uri.parse('http://localhost:3031/movies'));


    final moviesList = jsonDecode(moviesResponse.body);

    return moviesList.map<Movie>((movieMap) {
      return Movie.fromMap(movieMap);
    }).toList();
  }


  Future<Movie> findById(String id) async {
    final movieResponse =
        await http.get(Uri.parse('http://localhost:3031/movies/$id'));
    return Movie.fromJson(movieResponse.body);
  }


  Future<void> update(Movie movie) async {
    await http.put(
      Uri.parse('http://localhost:3031/movies/${movie.id}'),
        body: movie.toJson(),
        headers: {
          'content-type': 'application/json',
        }
    );
  }

   Future<void> insert(Movie movie) async {
    await http.post(
      Uri.parse('http://localhost:3031/movies/'),
        body: movie.toJson(),
        headers: {
          'content-type': 'application/json',
        }
    );
  }


}
