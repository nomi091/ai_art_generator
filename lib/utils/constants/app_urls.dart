class AppUrl{
  static const String domain = "https://inam.aragonpay.com/api";
  static const String artApiDomain = "https://cloud.leonardo.ai/api";
  static const String bearerToken= "283d9eaa-4984-43bb-98fd-5fd666023774";

  static const String signUpEndPoint = "$domain/register";
  static const String signInEndPointEndPoint = "$domain/login";
  static const String completeProfileEndPointEndPoint = "$domain/profile/complete-profile";
  static const String socialLoginEndPoint = "$domain/auth/";
  static const String verifyAccountEmailApi = "$domain/auth/forgot-password";
  static const String passwordResetAPI = "$domain/user";
  //ai art apis 
    static const String getArtStyleEndPoint = "$artApiDomain/rest/v1/platformModels";
    static const String artGenerateEndPoint = "$artApiDomain/rest/v1/generations";

}