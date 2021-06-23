
import 'package:elearning/lessons_manager/lesson_manager.dart';
import 'package:flutter/material.dart';
import 'courses_manager/courses_manager.dart';
import 'materials/router.dart';
import 'materials/routing-constants.dart';


void main() async{
  runApp(MyApp());

 /* InsertAllCategories insert = new  InsertAllCategories();
  insert.InsertCategories();

  UpdateCategory update = new  UpdateCategory();
  update.updatecategory();

  DeleteCategory delete = new  DeleteCategory();
  delete.deletecategory();

  GetAllCourses geta = new  GetAllCourses();
  geta.getallcourses();*/
//  GetAllLesson geta = new  GetAllLesson();
//  geta.getalllesson();
//  print(geta);
//  GetAllCourses getb = new  GetAllCourses();
//  getb.getallcourses();
//  print(getb);
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      initialRoute: screen0Route,
      onGenerateRoute: Router.generateRoute,
      theme: ThemeData(
          fontFamily: 'Avenir'
      ),
    );
  }
}
