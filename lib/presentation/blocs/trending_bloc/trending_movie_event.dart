part of 'trending_movie_bloc.dart';

abstract class TrendingMovieEvent extends Equatable {
  const TrendingMovieEvent();

  @override
  List<Object> get props => [];
}

class TrendingMovieFetched extends TrendingMovieEvent {}


//class TrendingMovieFetched extends TrendingMovieEvent{}