import 'package:dio/dio.dart';
import 'package:my_poly_auction/service/network/dio_client.dart';

class UserApi {
  final DioClient dioClient;

  UserApi({required this.dioClient});

  Future<Response> getUsersApi() async {
    final Response response = await dioClient.dio.get('/users');
    return response;
  }
}
