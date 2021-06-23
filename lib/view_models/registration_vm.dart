import 'package:elearning/managers/get_registeration_manager.dart';
import 'package:elearning/models/registration.dart';

class RegistrationVM{
  static var postRegistrationManager = GetRegistration();
  static getRegistration({
    String email,
    String name,
    String password,
    String confirmation,
    Function() onSuccess,
    Function() onFail
  }){
    postRegistrationManager.postRegistration(
      email: email,
      name: name,
      password: password,
      confirmation: confirmation,
      onSuccess: onSuccess,
      onFail: onFail
    );
  }
}