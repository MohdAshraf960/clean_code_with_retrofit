import 'package:clean_code_with_retrofit/data/repositories/movie_repositories_impl.dart';
import 'package:clean_code_with_retrofit/domain/domain.dart';
import 'package:get_it/get_it.dart';
import '../../config/config.dart';
import '../../data/data.dart';
import '../core.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  /// [repository]
  getIt.registerLazySingleton<MovieRepositories>(
      () => MovieRepositoryImpl(movieRemoteDataSource: getIt()));

  /// [datasource]
  getIt.registerLazySingleton(() => MovieRemoteDataSource(getIt()));

  /// core
  getIt.registerLazySingleton(() => DioFactory(ApiConstants.baseUrl));
}
