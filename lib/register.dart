import 'package:final_project/login_page.dart';
import 'package:flutter/material.dart';
import 'package:final_project/home_page.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home_page(),


    ),
  );
}
class register extends StatefulWidget {
  @override
  _registerState createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
  final firstname= Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'First Name',
          contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0)
          )
        ),
      ),
    );

  final lastname= Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'Last Name',
          contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0)
          )
        ),
      ),
    );

  final email= Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'Email',
          contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0)
          )
        ),
      ),
    );

      final phonenumber= Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'Phone Number',
          contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0)
          )
        ),
      ),
    );

           final buttonregister = Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: ButtonTheme(
        height: 56,
        child: RaisedButton(
          child: Text('Register', style: TextStyle(color: Colors.white, fontSize: 20)),
          color: Colors.black87,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50)
          ),
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => home_page()));
          }
        ),
      ),
    );



  
  return SafeArea(
    
      child: Scaffold(
        appBar: AppBar(
  leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.black),
   
    //arrow button onpressed
    onPressed: () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>login_page()));
     IconButton(
            icon: Icon(Icons.arrow_back), 
            );
    }
  ), 
  title: Text(" GOBIKES"),
  centerTitle: true,
),
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/image/images.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            
          
          child:Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 20),
            children: <Widget>[
              firstname,
              lastname,
              email,
              phonenumber,
              buttonregister,
           
            ],
          ),
        ),
      )
      )
    );
  }
}