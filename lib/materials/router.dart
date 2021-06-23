import 'package:elearning/courses_model/courses_model.dart';
import 'package:elearning/categories_models/getallcategory.dart';
import 'package:elearning/materials/routing-constants.dart';
import 'package:elearning/screens/Courses.dart';
import 'package:elearning/screens/MainPage.dart';
import 'package:elearning/screens/category.dart';
import 'package:elearning/screens/screen0.dart';
import 'package:elearning/screens/screen1.dart';
import 'package:elearning/screens/screen2.dart';
import 'package:elearning/screens/students.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:elearning/screens/lesson.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case screen0Route:
        return MaterialPageRoute(builder: (_) => Screen0());
      case screen1Route:
        return MaterialPageRoute(builder: (_) => Screen1());
      case screen2Route:
        return MaterialPageRoute(builder: (_) => Screen2());
      case MainPageRoute:
        return MaterialPageRoute(builder: (_) => MainPage());
      case StudentsPageRoute:
        return MaterialPageRoute(builder: (_) => Students());
      case CategoryPageRoute:
        CourseCategory categoy = settings.arguments;
        return MaterialPageRoute(builder: (_) => Category(category: categoy,));
      case CoursesPageRoute:
        var course1 = settings.arguments;
        return MaterialPageRoute(builder: (_) => Courses2(course: course1,));
      case LessonPageRoute:
        var lesson1 = settings.arguments;
        return MaterialPageRoute(builder: (_) => Llesson(lesn: lesson1,));
//      case CoursePageRoute:
//        List args = settings.arguments;
//        print(args[0]);
//        return MaterialPageRoute(builder: (_) => CoursePage(chosenImg: args[0], chosenTitle: args[1],));


    }
  }
}