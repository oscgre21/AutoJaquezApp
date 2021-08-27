import '../../../application/repositoryImpl/LoginRepositoryImpl.dart';

import '../../../domain/repositories/ILoginRepository.dart';
import 'package:get_it/get_it.dart';

final _injector = GetIt.instance;

GetIt injector() => _injector;
void setUp() {
  _injector
      .registerLazySingleton<ILoginRepository>(() => LoginRepositoryImpl());

  /*
  _injector.registerLazySingleton<GamesRepository>(
      () => GamesRepositoryImpl(_injector<FirestoreService>()));

  // Providers
  _injector.registerLazySingleton<GameProvider>(
      () => GameProvider(_injector<GetGameUC>()));

  // Use Cases
  _injector.registerLazySingleton<GetGameUC>(
      () => GetGameUC(_injector<GamesRepository>()));*/
}
