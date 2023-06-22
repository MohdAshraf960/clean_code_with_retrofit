import 'package:clean_code_with_retrofit/presentation/blocs/blocs.dart';
import 'package:get_it/get_it.dart';
import '../../domain/domain.dart';
import '../../data/data.dart';
import '../../config/config.dart';
import '../core.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  /// [bloc]
  getIt.registerLazySingleton(() => TrendingMovieBloc(getTrending: getIt()));

  /// [use case]
  getIt.registerLazySingleton(() => GetTrending(movieRepositories: getIt()));

  /// [repository]
  getIt.registerLazySingleton<MovieRepositories>(
      () => MovieRepositoryImpl(movieRemoteDataSource: getIt()));

  /// [datasource]
  getIt.registerLazySingleton(() => MovieRemoteDataSource(getIt()));

  /// core
  getIt.registerLazySingleton(() => DioFactory(ApiConstants.baseUrl));
}
