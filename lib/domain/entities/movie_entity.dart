import 'package:equatable/equatable.dart';

class MovieEntity extends Equatable {
  final String posterPath;
  final int id;
  final String backdropPath;
  final num voterAverage;
  final String title;

  const MovieEntity({
    required this.posterPath,
    required this.id,
    required this.backdropPath,
    required this.voterAverage,
    required this.title,
  });

  @override
  List<Object?> get props => [id, title];

  @override
  bool get stringify => true;
}
