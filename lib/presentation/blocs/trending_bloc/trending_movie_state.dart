part of 'trending_movie_bloc.dart';

abstract class TrendingMovieState extends Equatable {
  const TrendingMovieState();
  
  @override
  List<Object> get props => [];
}

class TrendingMovieInitial extends TrendingMovieState {}
