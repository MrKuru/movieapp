
import 'package:dio/dio.dart';
import 'package:movie_app/data/entity/movie.dart';


class MovieRepository {

  Future<List<Movie>> fetchMovies() async {
    var url = "http://10.0.2.2:8080/movies";
    try {
      var response = await Dio().get(url);

      if (response.statusCode == 200) {
        List<Map<String, dynamic>> jsonList = List.castFrom(response.data);
        List<Movie> movies = jsonList.map((json) => Movie.fromJson(json)).toList();
        return movies;
      } else {
        print('API çağrısı başarısız oldu. Status Code: ${response.statusCode}');
        return [];
      }
    } catch (e) {
      print('Hata oluştu: $e');
      return [];
    }
  }
}