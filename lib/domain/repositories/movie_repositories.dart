import 'package:dartz/dartz.dart';
import '../entities/entities.dart';

abstract class MovieRepositories {
  Future<Either<Exception, List<MovieEntity>>> getTrending(
      {required String apiKey, required String dayOrWeek});
}
