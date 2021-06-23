import 'package:elearning/materials/colors.dart';
import 'package:elearning/materials/routing-constants.dart';
import 'package:elearning/view_models/login_vm.dart';
import 'package:flutter/material.dart';


class Screen1 extends StatelessWidget {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  _signIn(BuildContext context){
    /// To add loading bar
    LoginVM.postlogin(
        email: emailController.text,
        password: passwordController.text,
        onSuccess: ()=> Navigator.pushNamed(context, MainPageRoute),
        onFail: ()=> print('error')
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.main,
        title: Center(
          child: Text('Sign in'),
        ),
      ),
      body: Container(
          color: AppColors.yellow,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: ListView(
                scrollDirection: Axis.vertical,
                children:<Widget>[
                  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 150,),
                    TextField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.blue,
                        labelText: 'Email address...',
                        prefixIcon: Icon(Icons.email, color: AppColors.second,),
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.second,
                        ),
                        border: OutlineInputBorder(
                          // width: 0.0 produces a thin "hairline" border
                          borderRadius: BorderRadius.all(Radius.circular(90.0)),
                          borderSide: BorderSide.none,
                          //borderSide: const BorderSide(),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextField(
                      controller: passwordController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.blue,
                        labelText: 'Password...',
                        prefixIcon: Icon(Icons.lock, color: AppColors.second,),
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.second,
                        ),
                        border: OutlineInputBorder(
                          // width: 0.0 produces a thin "hairline" border
                          borderRadius: BorderRadius.all(Radius.circular(90.0)),
                          borderSide: BorderSide.none,
                          //borderSide: const BorderSide(),
                        ),
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 20,),
                    Container(
                      child: InkWell(
                        child: Text('Forget Password',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                          decoration: TextDecoration.underline,
                        ),),
                      ),
                    ),
                    SizedBox(height: 20,),

                Positioned(
                  bottom: 200,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: InkWell(
                      onTap: ()=> _signIn(context),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                        decoration: BoxDecoration(
                          color: AppColors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                        ),
                        child: Text('Sign in ', style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700
                        ),),
                      ),
                    ),
                  ),
                ),
                ],
                    ),
              ],
              ),
              ),
            ),
        ),
      );
  }
}
