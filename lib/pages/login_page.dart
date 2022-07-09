// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_full_course_project/utils/routes.dart';

class LoginPage  extends StatefulWidget {


  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
   String name = "";
   bool changeButtan = false;
   final _fomeKey = GlobalKey<FormState>();
   

   moveTohome(BuildContext context)async{
    if(_fomeKey.currentState!.validate()){
      setState(() {
         changeButtan =true;
     }); 
     await Future.delayed(Duration(seconds: 1)) ;
     await Navigator.pushNamed(context,MyRoutes.homeRoute);
     setState(() {
       changeButtan =false;
     });
    }
   }
  
  
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child:Form(
        key: _fomeKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/login_image.png",
              fit: BoxFit.cover,),
              SizedBox(
                height: 20,
              ),
              Text("Welcome $name",
              style: TextStyle(
                fontSize: 20,fontWeight: 
                FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
               Padding(
                 padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
                 child: Column(
                  children: [
                     TextFormField(
                    decoration:InputDecoration(
                      hintText: "Enter username",
                      labelText: "Username"
                    ),
                    validator: (value){
                        if(value!.isEmpty){
                          return "username cannot be emoty";
                        }
                    },
                    onChanged: (value){
                      setState(() {
                        name = value;
                      });
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration:InputDecoration(
                      hintText: "Enter password",
                      labelText: "password"
                    ),
                    validator: (value){
                       if(value!.isEmpty){
                        return "passwoed cannot be emoty";
                       }
                       else if(value.length<6){
                         return 'password length should be atlleast 6';
                       }
                    },
                    
                  ),
                  SizedBox(
                    height: 20,
                  ),
                    Material(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(changeButtan?50:8),
                      child: InkWell(
                        onTap: (()=>moveTohome(context)),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width:changeButtan?50: 150,
                          height: 50,
                          alignment: Alignment.center,
                          child:changeButtan?Icon(Icons.done,color: Colors.pink,):Text("Login",style: TextStyle(color: Colors.
                          white,fontWeight: FontWeight.bold,
                          fontSize: 18
                          ),
                          ),
                          
                        ),
                      ),
                    )
        
        
                  
                  // ElevatedButton(onPressed: (){
                  //   Navigator.pushNamed(context,MyRoutes.homeRoute);            },
                  //  child: Text("Login"),
                  //   style: ElevatedButton.styleFrom(
                  //     primary: Colors.red,minimumSize: Size(120, 50),
              
                  //   ),
                  // )
                  ],
                 ),
               )
            ],
          ),
        ),
      )
    );
  }
}