import 'package:json_annotation/json_annotation.dart';

import 'movie_model.dart';

part 'movie_result_model.g.dart';

@JsonSerializable()
class MovieResultModel {
  int? page;
  List<MovieModel>? results;
  int? totalPages;
  int? totalResults;

  MovieResultModel(
      {this.page, this.results, this.totalPages, this.totalResults});

  factory MovieResultModel.fromJson(Map<String, dynamic> json) =>
      _$MovieResultModelFromJson(json);
}
