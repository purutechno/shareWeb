import 'package:get_it/get_it.dart';
import 'package:shareadminpanel/functions/articles_fun.dart';
import 'package:shareadminpanel/functions/profile_fun.dart';
import 'package:shareadminpanel/storage/shared_prefs.dart';

GetIt inject = GetIt.instance;

void setupDependencyInjection() {
  inject.registerLazySingleton(() => SharedPreferencesProvider());
  inject.registerLazySingleton(() => ArticlesFun());
  inject.registerLazySingleton(() => ProfileFun());
}
