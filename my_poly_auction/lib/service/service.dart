import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:my_poly_auction/data/api/auction_api.dart';
import 'package:my_poly_auction/data/api/user_api.dart';
import 'package:my_poly_auction/data/repository/auction_repository.dart';
import 'package:my_poly_auction/data/repository/user_repository.dart';
import 'package:my_poly_auction/service/network/dio_client.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  getIt.registerSingleton(Dio());
  getIt.registerSingleton(DioClient(getIt<Dio>()));
  getIt.registerSingleton(UserApi(dioClient: getIt<DioClient>()));
  getIt.registerSingleton(UserRepository(getIt.get<UserApi>()));
  getIt.registerSingleton(AuctionApi(dioClient: getIt<DioClient>()));
  getIt.registerSingleton(AuctionRepository(getIt.get<AuctionApi>()));
}
