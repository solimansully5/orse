import 'package:elearning/categories_managers/updatecategory_manager.dart';
import 'package:elearning/categories_models/updatecategory.dart';

class GetallVM{
  static var updatemanager = UpdateCategory();
  static updategategory({Function(Data) onSuccess, Function() onFail}){
    updatemanager.updatecategory(
        onSuccess: onSuccess,
        onFail: onFail
    );
  }
}