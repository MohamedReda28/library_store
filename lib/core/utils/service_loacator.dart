import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:project/core/utils/api_service.dart';
import 'package:project/feature/home/data/repos/home_repo_impl.dart';




final getIt = GetIt.instance;
void setUp()
{

getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(ApiService(Dio())));


}


