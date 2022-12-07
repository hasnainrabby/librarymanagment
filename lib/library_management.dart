import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:librarymanagment/user_details/user_details.dart';

class LibraryManagement extends StatefulWidget {
  const LibraryManagement({Key? key}) : super(key: key);

  @override
  State<LibraryManagement> createState() => _LibraryManagementState();
}

class _LibraryManagementState extends State<LibraryManagement> {

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Library Management",
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w200),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.library_books,size: 30,color: Colors.brown,),
                        Text("University of Dhaka",
                          style: TextStyle(fontWeight: FontWeight.w200,color: Colors.blue,fontSize: 30),)
                      ],
                    ),
                  ),
                  usernametextFieldView(),
                  passwordtextFieldView(),
                  loginButton()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  //Username Field

 Widget usernametextFieldView(){
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(20.0),
      child: TextFormField(
        controller: usernameController,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(8.0),
          hintText: "Enter User Name",
          hintStyle: TextStyle(color: Colors.grey),
          prefixIcon: Icon(Icons.person,color: Colors.grey,),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Colors.white12),
          )
        ),
      ),
    );
 }

 //Password Field

 Widget passwordtextFieldView(){
    return Container(
      padding: EdgeInsets.all(20.0),
      child: TextFormField(
        obscureText: true,
        controller: passwordController,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(8.0),
          hintText: "Enter your password",
          hintStyle: TextStyle(color: Colors.grey),
          prefixIcon: Icon(Icons.lock,color: Colors.grey,),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Colors.white12),

          )
        ),
      ),
    );
 }
//Login Button
 Widget loginButton(){
   return Column(
     children: [
       GestureDetector(
         onTap: (){
           login(usernameController.text.toString(),passwordController.text.toString(),context);

         },
         child: Container(
          // padding: EdgeInsets.all(20),
           height: MediaQuery.of(this.context).size.height/15,
           width: MediaQuery.of(this.context).size.width/4,
           decoration: BoxDecoration(
             color: Colors.green,
             borderRadius: BorderRadius.circular(10),
             border: Border.all(color: Colors.black26),
             boxShadow:[BoxShadow(color: Colors.grey.withOpacity(0.3),
                 spreadRadius: 5,
                 blurRadius: 7,
                 offset: Offset(0, 3)) ]

           ),
           child: Center(child: Text("Login",style:
           TextStyle(color: Colors.white,
               fontWeight: FontWeight.w400,
               fontSize: 18),)),

         ),
         ),
     ],
   );
 }
}
//Login Function, call from API.
void login(String username, String password,BuildContext context) async {
  try{
    Response response = await post(Uri.parse('https://reqres.in/api/register'),
        body:{
              'email': username,
              'password' : password
    });
    if(response.statusCode == 200){
      var data = jsonDecode(response.body.toString());

      print(data['token']);
      print("Account login successfully");
      final snackBar = SnackBar(
          duration: Duration(milliseconds: 900),
          content: Text("Successfully Login!",textAlign: TextAlign.center,),
          backgroundColor: Colors.grey.shade500,);
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      Navigator.push(context, MaterialPageRoute(builder: (context) => UserDetails()));
      
    }
    else{
      print('Login Failed');
      final snackBar = SnackBar(
        duration: Duration(milliseconds: 900),
        content: Text("Please Enter your username & password!",textAlign: TextAlign.center,),
        backgroundColor: Colors.grey.shade500,);
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
  catch(e) {
    print(e.toString());
  }
}


