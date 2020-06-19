import 'package:final_project/home_page.dart';
import 'package:final_project/register.dart';
import 'package:flutter/material.dart';


class login_page extends StatefulWidget {
  @override
  _login_pageState createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  
  @override
   Widget build(BuildContext context) {
      final inputEmail = Padding(
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

    final inputPassword = Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: TextField(
        keyboardType: TextInputType.text,
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Password',
          contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0)
          )
        ),
      ),
    );

        final buttonLogin = Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: ButtonTheme(
        height: 56,
        child: RaisedButton(
          child: Text('Login', style: TextStyle(color: Colors.white, fontSize: 20)),
          color: Colors.black87,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50)
          ),
          onPressed: ()  {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => home_page()));
          },
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
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => register()));
            
          }
        ),
      ),
    );

        final buttonForgotPassword = FlatButton(
      child: Text('Forgot Password', style: TextStyle(color: Colors.grey, fontSize: 16),),
      onPressed: null
    );

 
        return Scaffold(
     
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
              inputEmail,
              inputPassword,
              buttonLogin,
              buttonregister,
              buttonForgotPassword
            ],
          ),
        ),
        )
      
    );
      
  
  }
}