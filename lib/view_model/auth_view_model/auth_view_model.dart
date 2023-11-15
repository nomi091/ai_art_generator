import 'package:ai_art_generator/repository/auth_repo.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../data/responce/api_responce.dart';
import '../../service/hive_service.dart';
import '../../utils/routes/routes.dart';
import '../../view/Widget/snack_bar.dart';

class AuthViewModel extends ChangeNotifier {
  final AuthRepsitory repo = AuthRepsitory();
  setProfileCompleteData(ApiResponce<dynamic> responce) {
    getCompleProfileData = responce;
    debugPrint('set Profile list got');
    notifyListeners();
  }

  setSignUpError(ApiResponce<dynamic> responce) {
    debugPrint('set Error list got');
    notifyListeners();
  }

  ApiResponce<dynamic> getCompleProfileData = ApiResponce.loading();
  ApiResponce<dynamic> getSignUpError = ApiResponce.loading();

  TextEditingController logiEmailcontroller = TextEditingController();
  TextEditingController loginPasswordcontroller = TextEditingController();

  TextEditingController signUpEmailcontroller = TextEditingController();
  TextEditingController signpasswordcontroller = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController refrelController = TextEditingController();

  bool rememberme = false;
  bool obsecured = true;
  bool _authloading = false;
  bool get authloading => _authloading;

  setLoading(bool value) {
    _authloading = value;
    notifyListeners();
  }

  clear() {
    nameController.text = '';
    logiEmailcontroller.text = '';
    loginPasswordcontroller.text = '';
    signUpEmailcontroller.text = '';
    signpasswordcontroller.text = '';
    confirmPasswordController.text = '';
    refrelController.text = '';
  }

  Future<void> checkVerificationStatus(context) async {
    String status = await HiveService.checkVerificationStatus();
    if (kDebugMode) {
      print('Checking Statucs ======== > $status');
    }
    if (status.isEmpty) {
      Navigator.pushNamedAndRemoveUntil(
        context,
        ScreenRoutes.logIn,
        (route) => false,
      );
    }
    // else {
    //   if (status == 'Email Unverified') {
    //     Navigator.pushNamed(
    //       context,
    //       ScreenRoutes.emailConfirmationScreen,
    //     );
    //   }

    else if (status == 'Verified') {
      Navigator.pushNamed(
        context,
        ScreenRoutes.bottomNavBar,
      );
    } else {
      if (kDebugMode) {
        print("something went wrong===========> $status");
      }
    }
  }

  Future<void> loginApi(context) async {
    var data = {
      'email': logiEmailcontroller.text,
      'password': loginPasswordcontroller.text,
      // 'fcm_token': deviceToken
    };
    setLoading(true);
    try {
      await repo.loginApi(data).then((value) async {
        if (value.success == true) {
          setProfileCompleteData(ApiResponce.completed(value));
          await HiveService.saveUserInfo(value.data);
          checkVerificationStatus(context);
          setLoading(false);
        } else {
          if (value.message.toString().contains('Unauthorised')) {
            showBottomSnackbar(context, 'Invalid User Name or Password !');
          }

          setLoading(false);
        }
      });
    } catch (error) {
      setLoading(false);
      if (kDebugMode) {
        print(error.toString());
      }
    }
  }

  Future<void> signUpApi(context) async {
    var data = {
      'name': nameController.text,
      'email': signUpEmailcontroller.text,
      'password': signpasswordcontroller.text,
      'c_password': confirmPasswordController.text,
      'refer_by': refrelController.text,
    };
    setLoading(true);
    try {
      await repo.signUpApi(data).then((value) async {
        if (value.success == true) {
          setProfileCompleteData(ApiResponce.completed(value));
          await HiveService.saveUserInfo(value.data);
          checkVerificationStatus(context);
          setLoading(false);
        } else {
          showBottomSnackbar(context, value.message);
          setLoading(false);
        }
      });
    } catch (error) {
      setLoading(false);
      if (kDebugMode) {
        print(error.toString());
      }
    }
  }
}
