import 'genre.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    required String backdrop_path,
    required String poster_path,
    required int id,
    required String title,
    required String overview,
    required String release_date,
    required String original_language,
    @Default("") String tagline,
    @Default(0) int runtime,
    required double vote_average,
    @Default([]) List<Genre> genres,
  }) = _Movie;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}
