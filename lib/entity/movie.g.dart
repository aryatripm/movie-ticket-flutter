// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Movie _$$_MovieFromJson(Map<String, dynamic> json) => _$_Movie(
      backdrop_path: json['backdrop_path'] as String,
      poster_path: json['poster_path'] as String,
      id: json['id'] as int,
      title: json['title'] as String,
      overview: json['overview'] as String,
      release_date: json['release_date'] as String,
      original_language: json['original_language'] as String,
      tagline: json['tagline'] as String? ?? "",
      runtime: json['runtime'] as int? ?? 0,
      vote_average: (json['vote_average'] as num).toDouble(),
      genres: (json['genres'] as List<dynamic>?)
              ?.map((e) => Genre.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_MovieToJson(_$_Movie instance) => <String, dynamic>{
      'backdrop_path': instance.backdrop_path,
      'poster_path': instance.poster_path,
      'id': instance.id,
      'title': instance.title,
      'overview': instance.overview,
      'release_date': instance.release_date,
      'original_language': instance.original_language,
      'tagline': instance.tagline,
      'runtime': instance.runtime,
      'vote_average': instance.vote_average,
      'genres': instance.genres,
    };
