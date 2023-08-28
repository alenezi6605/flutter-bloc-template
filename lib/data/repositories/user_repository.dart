import 'package:flutter_bloc_template/data/models/user_model.dart';
import 'package:flutter_bloc_template/utils/api_config.dart';
import 'package:http/http.dart' as http;

class UserRepository {
  Future<UserModel> getUsers() async {
    final response =
        await http.get(Uri.parse('${ApiConfig.baseUrl}/users?id=1'));
    if (response.statusCode == 200) {
      return UserModelFromJson(response.body);
    } else {
      throw Exception("Failed to load user");
    }
  }
}
