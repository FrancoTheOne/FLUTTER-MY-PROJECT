import 'package:my_poly_auction/data/api/user_api.dart';
import 'package:my_poly_auction/data/models/user/user_model.dart';
import 'package:my_poly_auction/service/network/dio_exception.dart';

class UserRepository {
  final UserApi userApi;

  UserRepository(this.userApi);

  Future<List<UserModel>> getUsersRequested() async {
    return DioExceptions.tryDio(() async {
      final response = await userApi.getUsersApi();
      final users = (response.data['data'] as List)
          .map((e) => UserModel.fromJson(e))
          .toList();
      return users;
    });
  }
}
