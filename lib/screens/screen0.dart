
import 'package:elearning/materials/colors.dart';
import 'package:elearning/materials/routing-constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Screen0 extends StatelessWidget {

@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: AppColors.main,
    body: ListView(
      scrollDirection: Axis.vertical,
      children:<Widget>[ Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text("Online learning", style:  TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                      height: 1
                  ),),
                ),
                Container(
                  child: Text("is not the next", style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                      height: 1
                  ),),
                ),
                Container(
                  child: Text("big thing,", style:  TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                      height: 1
                  ),),
                ),
                Container(
                  child: Text("it is now the", style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                      height: 1
                  ),),
                ),
                Container(
                  child: Text("BIG THING,", style:  TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                      height: 1
                  ),),
                ),
              ],
            ),
          ),
          Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.bottomCenter,
                height: MediaQuery.of(context).size.height*0.6,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/image/ex2.png'),
                        fit: BoxFit.cover
                    )
                ),
              ),
              Positioned(
                bottom: 200,
                left: 0,
                right: 0,
                child: Center(
                  child: InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, screen1Route);
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 62, vertical: 10),
                      decoration: BoxDecoration(
                        color: AppColors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                      child: Text('Sign Up With Email ', style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700
                      ),),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 120,
                left: 0,
                right: 0,
                child: Center(
                  child: InkWell(
                    onTap: (){Navigator.pushNamed(context, screen2Route);},
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 75, vertical: 10),
                      decoration: BoxDecoration(
                        color: AppColors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                      child: Text('Create New User', style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700
                      ),),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 40,
                left: 0,
                right: 0,
                child: Center(
                  child: InkWell(
                    onTap: (){},
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                      decoration: BoxDecoration(
                        color: AppColors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                      child: Text('Continue With Google', style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700
                      ),),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    ]),
  );
}
}

