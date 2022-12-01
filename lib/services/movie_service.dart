import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:movie_ticket/entity/movie.dart';
import 'package:movie_ticket/utility/constant.dart';

class MovieService {
  final Dio dio = Dio();

  Future<List<Movie>?> getListMovieTrending() async {
    try {
      var result = await dio.get(
          "${Constant.BASE_URL}trending/movie/day?api_key=${Constant.API_KEY}");

      List<Movie> movies = (result.data['results'] as List)
          .map((e) => Movie.fromJson(e))
          .toList();

      return movies;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<List<Movie>?> getListMovieNowShowing() async {
    try {
      var result = await dio.get(
          "${Constant.BASE_URL}movie/now_playing?api_key=${Constant.API_KEY}");

      List<Movie> movies = (result.data['results'] as List)
          .map((e) => Movie.fromJson(e))
          .toList();

      return movies;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<List<Movie>?> getListMovieTrendingComingSoon() async {
    try {
      var result = await dio.get(
          "${Constant.BASE_URL}movie/upcoming?api_key=${Constant.API_KEY}");

      List<Movie> movies = (result.data['results'] as List)
          .map((e) => Movie.fromJson(e))
          .toList();

      return movies;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<Movie?> getMovie(int id) async {
    try {
      var result = await dio
          .get("${Constant.BASE_URL}movie/$id?api_key=${Constant.API_KEY}");

      Movie movie = Movie.fromJson(result.data);
      return movie;
    } catch (e) {
      log(e.toString());
      return null;
    }
  }
}
