import 'package:equatable/equatable.dart';

class MovieEntity extends Equatable {
  final int id;
  final String title;
  final String originalLanguage;
  final String originalTitle;
  final String releaseDate;
  final bool video;
  final num voteAverage;
  final String backdropPath;
  final String posterPath;

  const MovieEntity({
    required this.id,
    required this.title,
    required this.originalLanguage,
    required this.originalTitle,
    required this.releaseDate,
    required this.video,
    required this.voteAverage,
    required this.backdropPath,
    required this.posterPath,
  });

  @override
  List<Object?> get props => [id, title];
}
