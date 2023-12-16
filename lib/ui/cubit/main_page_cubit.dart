import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/data/entity/movie.dart';
import 'package:movie_app/data/repository/movie_repository.dart';

class MainPageCubit extends Cubit<List<Movie>>{
  MainPageCubit():super(<Movie>[]);

  var movieRepository = MovieRepository();

  Future<void> loadMovies() async {
    var list = await movieRepository.fetchMovies();
    emit(list);
  }
}