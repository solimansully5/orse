import 'package:elearning/categories_managers/deletecategory_manager.dart';
import 'package:elearning/categories_models/deletecategory.dart';

class DelallVM{
  static var deletemanager = DeleteCategory();
  static deletecategory({Function(Data) onSuccess, Function() onFail}){
    deletemanager.deletecategory(
        onSuccess: onSuccess,
        onFail: onFail
    );
  }
}