// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names
import 'dart:convert';

class Movie {
  bool adult; //bool
  String backdrop_path;
  List<int> genre_ids; //List<int>
  String? id;
  String original_language;
  String original_title;
  String overview;
  double popularity; //Double
  String poster_path;
  String release_date;
  bool video; //bool
  double vote_average; //Double
  int vote_count; //int

  Movie({
    required this.adult,
    required this.backdrop_path,
    required this.genre_ids,
    this.id,
    required this.original_language,
    required this.original_title,
    required this.overview,
    required this.popularity,
    required this.poster_path,
    required this.release_date,
    required this.video,
    required this.vote_average,
    required this.vote_count,
  });

  
  Map<String, dynamic> toMap() {
    return {
      'adult': adult,
      'backdrop_path': backdrop_path,
      'genre_ids': genre_ids,
      'id': id,
      'original_language': original_language,
      'original_title': original_title,
      'overview': overview,
      'popularity': popularity,
      'poster_path': poster_path,
      'release_date': release_date,
      'video': video,
      'vote_average': vote_average,
      'vote_count': vote_count,
    };
  }


  factory Movie.fromMap(Map<String, dynamic> map) {
    return Movie(
        adult: map['adult'] ?? false,
        backdrop_path: map['backdrop_path'] ?? 'Não Encontrado',
        genre_ids: List<int>.from(map['genre_ids']),
        id: map['id'] ?? 'Não Encontrado',
        original_language: map['original_language'] ?? 'Não Encontrado',
        original_title: map['title'] ?? 'Não Encontrado',
        overview: map['overview'] ?? 'Não Encontrado',
        popularity: map['popularity']?.toDouble() ?? 0.0,
        poster_path: map['poster_path'] ?? 'Não Encontrado',
        release_date: map['date'] ?? 'Não Encontrado',
        video: map['video'] ?? true,
        vote_average: map['vote_average']?.toDouble() ?? 0.0,
        vote_count: map['vote_count']?.toInt() ?? 0);
  }


  String toJson() => jsonEncode(toMap());

  factory Movie.fromJson(String json) => Movie.fromMap(jsonDecode(json));

  @override
  String toString() {
    return 'Movie(adult: $adult, backdrop_path: $backdrop_path, genre_ids: $genre_ids, id: $id, original_language: $original_language, original_title: $original_title, overview: $overview, popularity: $popularity, poster_path: $poster_path, release_date: $release_date, video: $video, vote_average: $vote_average, vote_count: $vote_count)';
  }
}
