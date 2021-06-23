import 'package:elearning/categories_managers/insertcategory_manager.dart';
import 'package:elearning/categories_models/insertcategory.dart';

class InsertCategoryVM{
  static var insertgategory = InsertAllCategories();
  static IsertCategories({Function(Data) onSuccess, Function() onFail}){
    insertgategory.InsertCategories(
        onSuccess: onSuccess,
        onFail: onFail
    );
  }
}