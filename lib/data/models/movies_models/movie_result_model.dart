import 'package:json_annotation/json_annotation.dart';
import 'movie_model.dart';

part 'movie_result_model.g.dart';

@JsonSerializable()
class MovieResultModel {
  final int page;
  final List<MovieModel> results;
  final int totalPages;
  final int totalResults;

  MovieResultModel({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  MovieResultModel copyWith({
    int? page,
    List<MovieModel>? results,
    int? totalPages,
    int? totalResults,
  }) =>
      MovieResultModel(
        page: page ?? this.page,
        results: results ?? this.results,
        totalPages: totalPages ?? this.totalPages,
        totalResults: totalResults ?? this.totalResults,
      );

  /// Connect the generated [_$MovieResultModelFromJson] function to the `fromJson`
  /// factory.
  factory MovieResultModel.fromJson(Map<String, dynamic> json) =>
      _$MovieResultModelFromJson(json);
}
