import 'package:bloc/bloc.dart';
import 'package:clean_code_with_retrofit/config/config.dart';
import 'package:clean_code_with_retrofit/domain/domain.dart';
import 'package:equatable/equatable.dart';

part 'trending_movie_event.dart';
part 'trending_movie_state.dart';

class TrendingMovieBloc extends Bloc<TrendingMovieEvent, TrendingMovieState> {
  final GetTrending getTrending;

  TrendingMovieBloc({required this.getTrending})
      : super(TrendingMovieInitial()) {
    on<TrendingMovieFetched>(_onTrendingMovieFetch);
  }

  _onTrendingMovieFetch(
      TrendingMovieFetched event, Emitter<TrendingMovieState> emit) async {
    emit(TrendingMovieInitial());
    emit(TrendingMovieLoading());
    final either = await getTrending(
        params: MovieTrendingParams(ApiConstants.apiKey, "day"));

    either.fold(
      (l) => emit(TrendingMovieError(l)),
      (r) => emit(
        TrendingMovieLoaded(r),
      ),
    );
  }
}
