import 'dart:convert';
import 'package:elearning/managers/http_request.dart';
import 'package:elearning/models/student.dart';

class GetStudents{
  var request = HTTPRequest();
  var url = 'https://paradising.herokuapp.com/api/lesson';
  getStudents(Function(StudentResponse) onSuccess, Function() onFail)async{
    await request.getRequest(url: url, onSuccess: (response){
      print(response.body);
      Map<String, dynamic> studentsJson = jsonDecode(response.body);
      StudentResponse students = StudentResponse.fromJson(studentsJson);
      onSuccess(students);
    }, onFail: (errorCode){
      onFail();
    });
  }
}