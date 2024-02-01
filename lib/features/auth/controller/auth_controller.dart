import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../repository/auth_repository.dart';

class AuthController with ChangeNotifier {
  final AuthRepository authRepo = AuthRepository();

  Future<void> loginApi(
      Map<dynamic, dynamic> data, BuildContext context) async {
    authRepo.loginApi(data).then((value) {
      if (kDebugMode) {
        print(value.toString());
      }
    }).onError((error, stackTrace) {
      if (kDebugMode) {
        print(error.toString());
      }
    });
  }
}
