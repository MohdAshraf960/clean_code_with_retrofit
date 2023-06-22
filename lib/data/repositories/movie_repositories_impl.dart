import 'package:clean_code_with_retrofit/data/datasources/remote/movie_remote_data_source.dart';
import 'package:clean_code_with_retrofit/domain/domain.dart';
import 'package:dartz/dartz.dart';

class MovieRepositoryImpl extends MovieRepositories {
  final MovieRemoteDataSource movieRemoteDataSource;

  MovieRepositoryImpl({required this.movieRemoteDataSource});

  @override
  Future<Either<Exception, List<MovieEntity>>> getTrending(
      {required String apiKey, required String dayOrWeek}) {
    return _getTrending(apiKey: apiKey, dayOrWeek: dayOrWeek);
  }

  Future<Either<Exception, List<MovieEntity>>> _getTrending(
      {required String apiKey, required String dayOrWeek}) async {
    try {
      final movieResult =
          await movieRemoteDataSource.getTrending(apiKey, dayOrWeek);
      return Right(movieResult.results);
    } catch (e) {
      return Left(Exception(e.toString()));
    }
  }
}
