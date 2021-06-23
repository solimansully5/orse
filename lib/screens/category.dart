import 'package:elearning/categories_models/getallcategory.dart';
import 'package:elearning/materials/colors.dart';
import 'package:elearning/materials/routing-constants.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final CourseCategory category;
 // final Course course;
  
  const Category({Key key, this.category, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.second,
        title: Text("${category.name}" , style: TextStyle(color: AppColors.blue),),
      ),
      backgroundColor: AppColors.main,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              SizedBox(
                height: 10,
              ),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: category.courses.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int indx) {
                    return Card(
                      color: AppColors.second,
                      child : InkWell(
                        onTap: ()=>Navigator.pushNamed(context, CoursesPageRoute, arguments: category.courses[indx]),
                        child: ListTile(
                          title:  Text("${category.courses[indx].name}" , style: TextStyle(color: AppColors.blue),),
                          subtitle: Text("${category.courses[indx].description}" ,style: TextStyle(color: AppColors.yellow),),
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
