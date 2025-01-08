import 'package:get_it/get_it.dart';

import '../../../features/home/data/data_sources/home_local_data_source.dart';
import '../../../features/home/data/data_sources/home_remote_data_source.dart';
import '../../../features/home/data/repos/home_repo_impl.dart';

final getIt = GetIt.instance;
void setUpServiceLocator(){
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
      homeRemoteDataSource: HomeRemoteDataSourceImpl(),
      homeLocalDataSource: HomeLocalDataSourceImpl()));
}