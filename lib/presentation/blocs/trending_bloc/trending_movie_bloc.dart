import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'trending_movie_event.dart';
part 'trending_movie_state.dart';

class TrendingMovieBloc extends Bloc<TrendingMovieEvent, TrendingMovieState> {
  TrendingMovieBloc() : super(TrendingMovieInitial()) {
    on<TrendingMovieEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
