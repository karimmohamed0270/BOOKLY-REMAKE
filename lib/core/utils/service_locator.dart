import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_imp.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  // flase <<<<<   FeaturedBooksCubit(HomeRepoImp(ApiService(Dio()))),
  // false >>>   FeaturedBookCubit(HomeRepoImp(ApiService(Dio()))),

  // true
  getIt.registerLazySingleton<ApiService>(() => ApiService(Dio()));
  getIt.registerLazySingleton<HomeRepoImp>(
    () => HomeRepoImp(getIt.get<ApiService>()),
  );
}
