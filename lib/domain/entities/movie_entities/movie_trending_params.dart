import 'package:equatable/equatable.dart';

class MovieTrendingParams extends Equatable {
  final String apiKey;
  final String dayOrWeek;

  const MovieTrendingParams(this.apiKey, this.dayOrWeek);
  @override
  List<Object?> get props => [dayOrWeek];
}
