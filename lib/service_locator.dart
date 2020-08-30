import 'package:get_it/get_it.dart';
import 'package:more_cricket/services/api.dart';

GetIt sl = GetIt.instance;

void initServiceLocator() {
  sl.registerLazySingleton<ApiService>(() => ApiService());
}
