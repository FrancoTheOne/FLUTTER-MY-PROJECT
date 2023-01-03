import 'package:dio/dio.dart';
import 'package:my_poly_auction/service/network/dio_client.dart';

class AuctionApi {
  final DioClient dioClient;

  AuctionApi({required this.dioClient});

  Future<Response> getAuctionList() async {
    final Response response = await dioClient.dio.get(
      '/auction/list',
      queryParameters: {
        'page': 0,
        'limit': 10,
      },
    );
    return response;
  }
}
