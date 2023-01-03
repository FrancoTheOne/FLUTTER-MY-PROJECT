import 'package:my_poly_auction/data/api/auction_api.dart';
import 'package:my_poly_auction/service/network/dio_exception.dart';

class AuctionRepository {
  final AuctionApi auctionApi;

  AuctionRepository(this.auctionApi);

  Future<dynamic> getAuctionListRepository() async {
    return DioExceptions.tryDio(() async {
      final response = await auctionApi.getAuctionList();
      // final users = (response.data['data'] as List)
      //     .map((e) => UserModel.fromJson(e))
      //     .toList();
      return response;
    });
  }
}
