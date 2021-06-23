import 'package:elearning/lessons_manager/lesson_manager.dart';
import 'package:elearning/lessons_model/lesson_model.dart';

class GetalllessonsVM{
  static var getallmanager = GetAllLesson();
  static getalllesson({String id, Function(lessonwithvideo) onSuccess, Function() onFail}){
    getallmanager.getalllesson(
        id: id,
        onSuccess: onSuccess,
        onFail: onFail
    );
  }
}