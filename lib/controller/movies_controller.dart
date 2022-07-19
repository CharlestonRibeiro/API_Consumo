// ignore_for_file: unused_local_variable
import 'package:consumption_api/models/movies.dart';
import 'package:consumption_api/repositories/movies_repository.dart';

class MoviesController {
  final _moviesRepository = MoviesRepository();

  Future<void> findAll() async {
    final movies = await _moviesRepository.findAll();
    movies.forEach(print);
  }

  Future<void> findById(String id) async {
    final movie = await _moviesRepository.findById(id);
    print(movie);
  }


  Future<void> update() async {
    final movie = await _moviesRepository.findById('63464');
    movie.genre_ids.add(10);
    await _moviesRepository.update(movie);

    final movieChanged = await _moviesRepository.findById('63464');
    print(movieChanged.genre_ids);
    print(movieChanged);
  }


  Future<void> insert() async {
    final movie = Movie(
        adult: true,
        backdrop_path: 'Deu certo',
        genre_ids: [1, 2, 3],
        original_language: 'Deu certo',
        original_title: 'Deu certo',
        overview: 'Deu certo',
        popularity: 1.1,
        poster_path: 'Deu certo',
        release_date: 'Deu certo',
        video: true,
        vote_average: 1.1,
        vote_count: 1);
    _moviesRepository.insert(movie);
  }
}
