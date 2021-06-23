import 'package:elearning/courses_manager/courses_manager.dart';
import 'package:elearning/courses_model/courses_model.dart';

class GetallcoursesVM{
  static var getallmanager = GetAllCourses();
  static getallcourses({String id, Function(CoursessWithLesson) onSuccess, Function() onFail}){
    getallmanager.getallcourses(
      id: id,
        onSuccess: onSuccess,
        onFail: onFail
    );
  }
}