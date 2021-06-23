import 'package:elearning/categories_models/getallcategory.dart';
import 'package:elearning/categories_view_models/getall_vm.dart';
import 'package:elearning/materials/colors.dart';
import 'package:elearning/materials/routing-constants.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  List<CourseCategory> categories = List<CourseCategory>();

  _getAllCategories() {
    GetallVM.getallcategories(
        onSuccess: (data) {
          setState(() {
            categories = data.data;
          });
        },
        onFail: () => print('Error')
    );
  }

  void initState() {
    _getAllCategories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor: AppColors.second,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Center(
              child: Text(
                "              ORSE", style: TextStyle(
                fontSize: 20,
                color: AppColors.blue,
              ),),
            ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/image/profilePic.png')
                  )
              ),
            )
          ],
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
              Padding(
                padding: const EdgeInsets.all(5),
                child:Text('What do you \nwant to \nlearn today?', style: TextStyle(
                  fontSize: 35,
                  height: 1.3,
                  fontWeight: FontWeight.w700,
                color: Colors.white
              ),),),
              SizedBox(
                height: 10,
              ),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: categories.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      color: AppColors.second,
                      child : InkWell(
                      onTap: ()=>Navigator.pushNamed(context, CategoryPageRoute,arguments: categories[index]),
                      child: ListTile(
                        title:  Text("${categories[index].name}" , style: TextStyle(color: AppColors.blue),),
                        subtitle: Text("${categories[index].description}" ,style: TextStyle(color: AppColors.yellow),),
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
