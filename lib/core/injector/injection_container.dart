import 'package:get_it/get_it.dart';
import '../../domain/domain.dart';
import '../../data/data.dart';
import '../../config/config.dart';
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
