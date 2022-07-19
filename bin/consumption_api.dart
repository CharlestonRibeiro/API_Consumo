// ignore_for_file: non_constant_identifier_names, prefer_const_declarations, unused_local_variable, avoid_print, unused_import

import 'dart:convert';

void main(List<String> arguments) {
  final moviesJson = ''''
    {
            "id": "634649",
            "adult": false,
            "backdrop_path": "/iQFcwSGbZXMkeyKrxbPnwnRo5fl.jpg",
            "genre_ids": [
                28,
                12,
                878
            ],
            "original_language": "en",
            "original_title": "Spider-Man: No Way Home",
            "overview": "Peter Parker is unmasked and no longer able to separate his normal life from the high-stakes of being a super-hero. When he asks for help from Doctor Strange the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man.",
            "popularity": 6925.636,
            "poster_path": "/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg",  
            "release_date": "2021-12-15",
            "title": "Spider-Man: No Way Home",
            "video": false,
            "vote_average": 8.2,
            "vote_count": 11703
        }
''';

// [] => List
// {} => Map<String>

  final moviesMap = json.decode(moviesJson);

  print(moviesMap);
}
