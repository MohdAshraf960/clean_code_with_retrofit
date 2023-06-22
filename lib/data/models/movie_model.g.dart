// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_generator

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) => $checkedCreate(
      'MovieModel',
      json,
      ($checkedConvert) {
        final val = MovieModel(
          adult: $checkedConvert('adult', (v) => v as bool),
          backdropPath: $checkedConvert('backdrop_path', (v) => v as String),
          id: $checkedConvert('id', (v) => v as int),
          title: $checkedConvert('title', (v) => v as String),
          originalLanguage:
              $checkedConvert('original_language', (v) => v as String),
          originalTitle: $checkedConvert('original_title', (v) => v as String),
          overview: $checkedConvert('overview', (v) => v as String),
          posterPath: $checkedConvert('poster_path', (v) => v as String),
          mediaType: $checkedConvert('media_type', (v) => v as String),
          genreIds: $checkedConvert('genre_ids',
              (v) => (v as List<dynamic>).map((e) => e as int).toList()),
          popularity: $checkedConvert('popularity', (v) => v as num),
          releaseDate: $checkedConvert('release_date', (v) => v as String),
          video: $checkedConvert('video', (v) => v as bool),
          voteAverage: $checkedConvert('vote_average', (v) => v as num),
          voteCount: $checkedConvert('vote_count', (v) => v as num),
        );
        return val;
      },
      fieldKeyMap: const {
        'backdropPath': 'backdrop_path',
        'originalLanguage': 'original_language',
        'originalTitle': 'original_title',
        'posterPath': 'poster_path',
        'mediaType': 'media_type',
        'genreIds': 'genre_ids',
        'releaseDate': 'release_date',
        'voteAverage': 'vote_average',
        'voteCount': 'vote_count'
      },
    );
