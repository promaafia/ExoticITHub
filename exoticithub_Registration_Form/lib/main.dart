import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Resigitration(),
  ));
}

class Resigitration extends StatefulWidget {
  const Resigitration({super.key});

  @override
  State<Resigitration> createState() => _ResigitrationState();
}

class _ResigitrationState extends State<Resigitration> {
  TextEditingController fullname= TextEditingController();
  TextEditingController email= TextEditingController();
  TextEditingController password= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bg.png'), fit: BoxFit.cover),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                   SizedBox(height: 20,),
                Image(image: AssetImage('assets/logo.png'),width: 250,),
                   SizedBox(height: 20,),
                Text("Create an Account",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                 SizedBox(height: 20,),
                Padding(
                padding: EdgeInsets.symmetric(horizontal: 14,vertical: 5),
                  child: TextField(
                    controller: fullname,
                    decoration: InputDecoration(
                      hintText: 'Jhon Deo',
                      label: Text("Full Name"),
                      labelStyle: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),
                      prefixIcon: Icon(Icons.person),
                      focusColor: Colors.amber,
                      suffixIcon: IconButton(icon: Icon(Icons.delete),onPressed: (){
                        fullname.clear();
          
                      },),
                       contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: Colors.amberAccent)),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: Colors.amberAccent))
                    ),
                  ),
                ),
                Padding(
                 padding: EdgeInsets.symmetric(horizontal: 14,vertical: 5),
                  child: TextField(
                    controller: email,
                    decoration: InputDecoration(
                      hintText: 'example@mail.com',
                      label: Text("Email"),
                      labelStyle: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),
                      prefixIcon: Icon(Icons.email),
                      focusColor: Colors.amber,
                      suffixIcon: IconButton(icon: Icon(Icons.delete),onPressed: (){
                        email.clear();
          
                      },),
                       contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: Colors.amberAccent)),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: Colors.amberAccent))
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14,vertical: 5),
                  child: TextField(
                    controller: password,
                    decoration: InputDecoration(
                      hintText: '********',
                      label: Text("Password"),
                      labelStyle: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),
                      prefixIcon: Icon(Icons.person),
                      focusColor: Colors.amber,
                      suffixIcon: IconButton(icon: Icon(Icons.delete),onPressed: (){
                        password.clear();
          
                      },),
                       contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: Colors.amberAccent)),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: Colors.amberAccent))
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14,vertical: 5),
                  child: ElevatedButton(onPressed: () {}, child: Container(height: 24,width: MediaQuery.of(context).size.width,alignment: Alignment.center,child: Text("Sing up"))),
                ),
                SizedBox(height: 10,),
                Text("Sing up with" , style: TextStyle(fontSize: 20,color: Colors.black),),
                   SizedBox(height: 10,),
                Container(
                  width: 150,
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 222, 187, 63),
                        radius: 25,
                        child: Icon(Icons.facebook,size: 40,color: Colors.black,),
                      ),
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 222, 187, 63),
                        radius: 25,
                        child: Icon(Icons.facebook,size: 40,color: Colors.black,),
                      ),
                    
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
