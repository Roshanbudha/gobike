import 'package:flutter/material.dart';
import 'package:final_project/home_page.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Go Bikes'),),
        elevation: .1,
        backgroundColor: Colors.green,
          leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.black),
   
    //arrow button onpressed
    onPressed: () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>home_page()));
      IconButton(
            icon: Icon(Icons.arrow_back), 
            );
    }
  ), 
        
      ),
      
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
        child: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(3.0),
          children: <Widget>[
            makeDashboardItem("User Profile", Icons.verified_user),
            makeDashboardItem("List of Bikes", Icons.motorcycle),
            makeDashboardItem("Payment", Icons.payment),
            makeDashboardItem("Book a Ride", Icons.motorcycle),
            makeDashboardItem("User Order", Icons.verified_user),
            
          ],
        ),
      ),
    );
  }

  Card makeDashboardItem(String title, IconData icon) {
    return Card(
        elevation: 1.0,
        margin: new EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(220, 220, 220, 1.0)),
          child: new InkWell(
            onTap: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                SizedBox(height: 50.0),
                Center(
                    child: Icon(
                  icon,
                  size: 40.0,
                  color: Colors.black,
                )),
                SizedBox(height: 20.0),
                new Center(
                  child: new Text(title,
                      style:
                          new TextStyle(fontSize: 18.0, color: Colors.black)),
                )
              ],
            ),
          ),
        ));
  }
}
