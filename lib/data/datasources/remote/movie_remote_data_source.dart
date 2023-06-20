import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../models/models.dart';

part 'movie_remote_data_source.g.dart';

@RestApi()
abstract class MovieRemoteDataSource {
  factory MovieRemoteDataSource(Dio dio, {String baseUrl}) =
      _MovieRemoteDataSource;

  @GET('trending/movie/{time_window}')
  Future<List<MovieModel>> getTrending(
    @Path('time_window') String timeWindow,
    @Query('api_key') String apiKey,
  );
}
