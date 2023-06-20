// ignore_for_file: overridden_fields, annotate_overrides

import 'package:clean_code_with_retrofit/domain/domain.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_model.g.dart';

@JsonSerializable()
class MovieModel extends MovieEntity {
  final bool adult;

  final String backdropPath;
  final int id;
  final String title;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final String posterPath;
  final String mediaType;
  final List<int> genreIds;
  final num popularity;
  final String releaseDate;
  final bool video;
  final num voteAverage;
  final int voteCount;

  const MovieModel(
      {required this.adult,
      required this.backdropPath,
      required this.id,
      required this.title,
      required this.originalLanguage,
      required this.originalTitle,
      required this.overview,
      required this.posterPath,
      required this.mediaType,
      required this.genreIds,
      required this.popularity,
      required this.releaseDate,
      required this.video,
      required this.voteAverage,
      required this.voteCount})
      : super(
            posterPath: posterPath,
            id: id,
            backdropPath: backdropPath,
            voterAverage: voteAverage,
            title: title);

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);
}
