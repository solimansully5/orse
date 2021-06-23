import 'package:elearning/categories_models/getallcategory.dart';
import 'package:elearning/courses_model/courses_model.dart';
import 'package:elearning/courses_view_model/courses_view_models.dart';
import 'package:elearning/materials/colors.dart';
import 'package:flutter/material.dart';
import 'package:elearning/materials/routing-constants.dart';

class Courses2 extends StatefulWidget {
  final Course course;

  const Courses2({Key key, this.course}) : super(key: key);
  @override
  _Courses2State createState() => _Courses2State();
}

class _Courses2State extends State<Courses2> {
  CoursessWithLesson course = CoursessWithLesson();

  _getAllcourses() {
    GetallcoursesVM.getallcourses(
      id: widget.course.id.toString(),
        onSuccess: (data) {
          setState(() {
            course = data;
          });
        },
        onFail: () => print('Error')
    );
  }

  void initState() {
    _getAllcourses();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(centerTitle: true,backgroundColor: AppColors.second,
          title: Text('${widget.course.name}', style: TextStyle(
            fontSize: 20,
            color: AppColors.blue,
          ),
          ),
        ),
      backgroundColor: AppColors.main,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 25,),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: course.lessons != null ? course.lessons.length : 0,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      color: AppColors.second,
                      child : InkWell(
                        onTap: ()=>Navigator.pushNamed(context, LessonPageRoute, arguments: course.lessons[index]),
                        child: ListTile(
                          title:  Text("${course.lessons[index].name}" , style: TextStyle(color: AppColors.blue),),
                          subtitle: Text("${course.lessons[index].decritpion}" ,style: TextStyle(color: AppColors.yellow),),
                          trailing: Icon(Icons.arrow_forward),
                        ),
                      ),
                    );
                  }
              ),
            ],
          ),
        ],
      ),
    );
  }
}
