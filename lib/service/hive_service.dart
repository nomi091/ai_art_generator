import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

import '../Model/auth_model.dart';

class HiveService {
  HiveService._providerConstructor();
  static final HiveService instance = HiveService._providerConstructor();

  Future<Box> get box async {
    return await Hive.openBox('UserSession');
  }

  static Future<void> saveUserInfo(Data user) async {
    Box box = await instance.box;
    String userJson = jsonEncode(user.toJson()); // Convert user to JSON string
    box.put('userDetails', userJson);
    if (kDebugMode) {
      print("Saved: $userJson");
    }
  }

  static Future getUserProfile() async {
    Box box = await instance.box;
    var userprofile = await box.get('userDetails');
    Map<String, dynamic> userMap = jsonDecode(userprofile);
    Data user = Data.fromJson(userMap);
    return user;
  }

  static Future getUserToken() async {
    Box box = await instance.box;
    var userprofile = await box.get('userDetails');
    Map<String, dynamic> userMap = jsonDecode(userprofile);
    Data user = Data.fromJson(userMap);
    return user.token;
  }


//verification
  static Future<String> checkVerificationStatus() async {
    Box box = await instance.box;
    var userJson = box.get('userDetails');
    print(userJson);
    if (userJson == null) return '';
    Map<String, dynamic> userMap = jsonDecode(userJson);
    Data user = Data.fromJson(userMap);
    print(user.token);
    if (user.token!= null) {
      return 'Verified';
    } else {
      return '';
    }
  }

//Sign Out
  static Future signOut() async {
    Box box = await instance.box;
    box.delete('userDetails');
    if (kDebugMode) {
      print("check ${await box.get('userDetails')}");
    }
  }
}
