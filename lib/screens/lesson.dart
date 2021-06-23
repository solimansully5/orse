import 'package:elearning/courses_model/courses_model.dart';
import 'package:elearning/materials/colors.dart';
import 'package:flutter/material.dart';
import 'package:elearning/materials/routing-constants.dart';
import 'package:elearning/lessons_model/lesson_model.dart';
import 'package:elearning/lessons_view_model/lesson_view_models.dart';

class Llesson extends StatefulWidget {
  final Lessonnn lesn;

  const Llesson({Key key, this.lesn}) : super(key: key);
  @override
  _LlessonState createState() => _LlessonState();
}
class _LlessonState extends State<Llesson> {
  lessonwithvideo leesson = lessonwithvideo();

  _getAlllessons() {
    GetalllessonsVM.getalllesson(
        id: widget.lesn.id.toString(),
        onSuccess: (data) {
          setState(() {
            leesson = data;
          });
        },
        onFail: () => print('Error')
    );
  }

  void initState() {
    _getAlllessons();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, backgroundColor: AppColors.second,
        title: Text(/*'${leesson.name}'*/'${widget.lesn.name}', style: TextStyle(
          fontSize: 20,
          color: AppColors.blue,
        ),
        ),
      ),
      backgroundColor: AppColors.main,
//      body: ListView(
//        scrollDirection: Axis.vertical,
//        children: <Widget>[
//          Column(
//            crossAxisAlignment: CrossAxisAlignment.start,
//            children: <Widget>[
//              SizedBox(height: 25,),
//              ListView.builder(
//                  physics: NeverScrollableScrollPhysics(),
//                  itemCount: leesson.videos != null ? leesson.videos.length : 0,
//                  shrinkWrap: true,
//                  itemBuilder: (BuildContext context, int indexx) {
//                    return Card(
//                      color: AppColors.second,
//                      child : InkWell(
//                        // onTap: ()=>Navigator.pushNamed(context, CoursePageRoute,arguments: categories[index]),
//                        child: ListTile(
//                          title:  Text("${leesson.videos[indexx].name}" , style: TextStyle(color: AppColors.blue),),
//                          subtitle: Text("${leesson.videos[indexx].decritpion}" ,style: TextStyle(color: AppColors.yellow),),
//                          trailing: Icon(Icons.arrow_forward),
//                        ),
//                      ),
//                      );
//                  }
//              ),
//            ],
//          ),
//        ],
//      ),
    );
  }
}
