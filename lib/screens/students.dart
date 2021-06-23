import 'package:elearning/models/student.dart';
import 'package:elearning/view_models/student_vm.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Students extends StatefulWidget {
  @override
  _StudentsState createState() => _StudentsState();
}

class _StudentsState extends State<Students> {
  List<Student> students = [];
  @override
  void initState() {
    getStudents();
    super.initState();
  }
  getStudents(){
    StudentVM.getStudents((students){
      setState(() {
        this.students = students;
      });
    }, (){
      print('error occurred');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:Text("Students")
      ),
      body: ListView.builder(
          itemCount: students.length,
          itemBuilder: (BuildContext context,int index){
            return ListTile(
                leading: Icon(Icons.person),
                title: Text('${students[index].id} ${students[index].body}'),
                trailing: Text(students[index].title,
                  style: TextStyle(
                      color: Colors.black,fontSize: 15),),
            );
          }
      ),
    );
  }
}
