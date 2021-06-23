import 'package:elearning/managers/get_registeration_manager.dart';
import 'package:elearning/managers/post_login_manager.dart';
import 'package:elearning/models/registration.dart';

class LoginVM{
  static var postLoginManager = PostLogin();
  static postlogin({
    String email,
    String password,
    Function() onSuccess,
    Function() onFail
  }){
    postLoginManager.postlogin(
        email: email,
        password: password,
        onSuccess: onSuccess,
        onFail: onFail
    );
  }
}