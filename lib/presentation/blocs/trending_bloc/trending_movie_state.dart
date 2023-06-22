part of 'trending_movie_bloc.dart';

abstract class TrendingMovieState extends Equatable {
  const TrendingMovieState();

  @override
  List<Object> get props => [];
}

class TrendingMovieInitial extends TrendingMovieState {}

class TrendingMovieLoading extends TrendingMovieState {}

class Empty extends TrendingMovieState {}

class TrendingMovieLoaded extends TrendingMovieState {
  final List<MovieEntity> trendingMovieList;

  const TrendingMovieLoaded(this.trendingMovieList);

  @override
  List<Object> get props => [trendingMovieList];
}

class TrendingMovieError extends TrendingMovieState {
  final Exception error;
  const TrendingMovieError(this.error);
  @override
  List<Object> get props => [error];
}
