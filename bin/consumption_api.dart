// ignore_for_file: non_constant_identifier_names, prefer_const_declarations, unused_local_variable, avoid_print, unused_impo, unused_import

import 'dart:convert';
import 'package:consumption_api/controller/movies_controller.dart';
import 'package:consumption_api/models/movies.dart';

void main() {
  MoviesController().findAll();
//MoviesController().insert();
//MoviesController().update();
//MoviesController().findById('dfbbae90-0784-11ed-af03-adca64deb1c9');
//MoviesController().findById('63464');
}

void main2(List<String> arguments) {
  final movieJson = '''
    {
            "adult": false,
            "backdrop_path": "/iQFcwSGbZXMkeyKrxbPnwnRo5fl.jpg",
            "genre_ids": [
                28,
                12,
                878
            ],
            "id": "634649",
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
// {} => Map<String, dynamic>

  final movieMap = json.decode(movieJson);

  print(movieMap);
  print('*' * 30);
  print(movieMap.runtimeType);
  print('*' * 30);
}
