import 'package:final_project/bikelist.dart';
import 'package:flutter/material.dart';
import 'package:final_project/login_page.dart';
import 'package:final_project/register.dart';
import 'package:final_project/faq.dart';
import 'package:final_project/dashboard.dart';
import 'package:final_project/main.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'dart:async';




void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home_page(),


    ),
  );
}
class home_page extends StatefulWidget {
  home_page({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _home_pageState createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  DateTime _date= new DateTime.now();
  TimeOfDay _time= new  TimeOfDay.now ();
  Future<Null> _selectDate(BuildContext context) async{
    final DateTime picked =await showDatePicker(
      context: context,
       initialDate: _date,
        firstDate: new DateTime(2020),
         lastDate: new DateTime(2030)
         
         );
         if(picked!= null && picked!=_date) {
           print('Date selected is: ${_date.toString()}');
           setState(() {
             _date= picked;
           });  
         }

    
  }
  @override

  Widget build(BuildContext context) {
  Widget imageCarousel = new Container(
    height: 600.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('lib/image/1.jpg'),
        AssetImage('lib/image/2.jpg'),
        AssetImage('lib/image/3.jpg'),
      ],
      autoplay: true,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
    ),
  );

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        title:Text('GOBIKES', style:TextStyle(color:Colors.black),),
        backgroundColor: Colors.green,
      ),
      
      






      drawer: new Drawer(
        child: new ListView(
          children: <Widget> [
      
      InkWell(
        onTap: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => home_page()));
        },
        child: ListTile(
          title: Text('Home'),
          leading: Icon(Icons.home),
        ),
      ),      

      InkWell(
        onTap: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => home_page()));
        },
        child: ListTile(
          title: Text('Book a Ride'),
          leading: Icon(Icons.motorcycle),
        ),
      ),         

      InkWell(
        onTap: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => login_page()));
        },
        child: ListTile(
          title: Text('Login'),
          leading: Icon(Icons.lock_open),
        ),
      ),       

       InkWell(
        onTap: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => register()));
        },
        child: ListTile(
          title: Text('Sign Up'),
          leading: Icon(Icons.verified_user),
        ),
      ),        

      InkWell(
        onTap: (){},
        child: ListTile(
          title: Text('Bhutan Trips'),
          leading: Icon(Icons.directions),
        ),
      ),         

       InkWell(
        onTap: (){},
        child: ListTile(
          title: Text('Ladakh Trips'),
          leading: Icon(Icons.directions),
        ),
      ),        

       InkWell(
        onTap: (){},
        child: ListTile(
          title: Text('Delhi Darshan'),
          leading: Icon(Icons.directions),
        ),
      ),        
        
      InkWell(
        onTap: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => faq()));
          
        },
        child: ListTile(
          title: Text('FAQ'),
          leading: Icon(Icons.verified_user),
        ),
      ),         

      InkWell(
        onTap: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Dashboard()));
        },
        child: ListTile(
          title: Text('Dashboard'),
          leading: Icon(Icons.verified_user),
        ),
      ),  
      
      InkWell(
        onTap: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => bikelist()));
        },
        child: ListTile(
          title: Text('Bikes List'),
          leading: Icon(Icons.verified_user),
        ),
      ),         
         
         
         
          ]
        ),
      ),
        
      body:new  ListView(
          children: <Widget>[
            imageCarousel
              ],


          ),
      
    );
  }
}

    
    
    
