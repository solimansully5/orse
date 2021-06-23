import 'package:elearning/managers/get_students_manager.dart';
import 'package:elearning/models/student.dart';

class StudentVM{
  static var getStudentsManager = GetStudents();
  static getStudents(Function(List<Student>) onSuccess, Function() onFail){
    getStudentsManager.getStudents((students) {
      onSuccess(students.data);
    }, (){
      onFail();
    });
  }
}