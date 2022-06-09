import 'package:knolink_web/data/datasources/user_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:knolink_web/env/env.dart';
import '../models/user.dart';

class UserRepository {
  final UserProvider _userProvider = UserProvider();

  getAllUsers() => _userProvider.getUsers();
}
