import 'package:ai_art_generator/data/network/base_api_service.dart';
import 'package:flutter/foundation.dart';

import '../Model/auth_model.dart';
import '../utils/constants/app_urls.dart';

class AuthRepsitory {
  final NetworkApiService _apiService = NetworkApiService();
  Future<dynamic> loginApi(
    dynamic data,
  ) async {
    try {
      dynamic response = await _apiService.postApiResponse(
        AppUrl.signInEndPointEndPoint,
        data,
        false,
      );
      if (kDebugMode) {
        print(response);
      }
      return AuthModel.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }


  Future<dynamic> signUpApi(
    dynamic data,
  ) async {
    try {
      dynamic response = await _apiService.postApiResponse(
        AppUrl.signUpEndPoint,
        data,
        false,
      );
      if (kDebugMode) {
        print(response);
      }
      return AuthModel.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }
}
