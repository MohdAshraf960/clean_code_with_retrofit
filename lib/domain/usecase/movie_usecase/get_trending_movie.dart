import 'package:clean_code_with_retrofit/core/core.dart';
import 'package:clean_code_with_retrofit/domain/domain.dart';
import 'package:dartz/dartz.dart';

class GetTrending extends UseCase<List<MovieEntity>, MovieTrendingParams> {
  final MovieRepositories movieRepositories;

  GetTrending({required this.movieRepositories});

  @override
  Future<Either<Exception, List<MovieEntity>>> call(
      {required MovieTrendingParams params}) async {
    return await movieRepositories.getTrending(
      apiKey: params.apiKey,
      dayOrWeek: params.dayOrWeek,
    );
  }
}
