import 'package:elearning/categories_managers/get_all_categories_manager.dart';
import 'package:elearning/categories_models/getallcategory.dart';

class GetallVM{
  static var getallmanager = GetAllCategories();
  static getallcategories({Function(Categories) onSuccess, Function() onFail}){
    getallmanager.getallcategories(
        onSuccess: onSuccess,
        onFail: onFail
    );
  }
}