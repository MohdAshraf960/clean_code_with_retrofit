import '../../data.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'movie_remote_data_source.g.dart';

@RestApi() // Replace with your base URL
abstract class MovieRemoteDataSource {
  factory MovieRemoteDataSource(Dio dio, {String baseUrl}) =
      _MovieRemoteDataSource;

  @GET("trending/movie/{time_window}")
  Future<MovieResultModel> getTrending(
    @Query("api_key") String apiKey,
    @Path("time_window") String dayOrWeek,
  );
}
