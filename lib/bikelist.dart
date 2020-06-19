import 'package:final_project/home_page.dart';
import 'package:final_project/models/bikes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/src/widgets/basic.dart';
import 'package:final_project/individualbike.dart';
class bikelist extends StatefulWidget {
  @override
  _bikelistState createState() => _bikelistState();
}

class _bikelistState extends State<bikelist> {
  final bikes= allBikes;
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
            backgroundColor:Color(0xFFFAF6ED),
            body: ListView(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back), 
                      onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => home_page()));
                      }
                      ),
                    IconButton(
                      icon: Icon(Icons.menu), 
                      onPressed: null
                      )

                  ], 
                 


                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0,right: 15.0),
                  child: Row(
                    children:<Widget> [Text('Bikes for Rent',
                         style: GoogleFonts.tinos( 
                         fontSize:25.0,
                         fontWeight: FontWeight.w500

                  ),
                  ),
                      IconButton(
                       icon: Icon(Icons.keyboard_arrow_down), 
                        onPressed: null
                       )                  

                    ]
                  )
                  
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0,right: 15.0),
                  child: Row(
                    children:<Widget> [Text('Varity of bikes',
                         style: GoogleFonts.sourceCodePro( 
                         fontSize:15.0,
                         fontWeight: FontWeight.w400,
                         color: Color(0xFF5E5B54)

                  ),
                  ),              

                    ]
                  )
                  
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0,right: 15.0),
                  child:TextField(
                    decoration: InputDecoration(
                      prefixIcon:IconButton(icon:Icon(Icons.search),onPressed:null),
                      hintText:'Search',
                      hintStyle: GoogleFonts.tinos( 
                         fontSize:18.0,
                         fontWeight: FontWeight.w400,
                         color: Color(0xFF5E5B54)

                    ),
                    suffixIcon: IconButton(icon:Icon(Icons.filter),onPressed:null),

                    ),
                  )
                  ),
                  Container(
                    height:MediaQuery.of(context).size.height -200,
                    child:GridView.count(
                      crossAxisCount: 3,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 1,
                      childAspectRatio: 0.67,
                      primary: false,
                      children: <Widget>[
                        ...bikes.map((e){
                          return buildBikesGrid(e);  

                        }).toList()

                      ],
                    )
 
                  )
              ],
              
            ) ,

          )
          
      
      );
    
  } 
  buildBikesGrid(Bikes bikes){
      return GestureDetector( 
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context)=>individualbike(selectedBikes: bikes)
          ));

        },
        child: Padding(
          padding: EdgeInsets.all(5.0), 
           child:Stack(
             children: <Widget>[
               Container(height:150.0,
               width:100.0,  
               color:Colors.transparent,
               ),
               Positioned(left: 30.0,
               top: 65.0,
               child: Container(height:30.0,
               width:40.0,
               decoration:BoxDecoration(
                 boxShadow: [
                   BoxShadow(
                     blurRadius:7.0,
                     color:Colors.grey.withOpacity(0.75),
                     offset: Offset(5, 25),
                     spreadRadius: 12.0 


                   )
                 ] )
                 ),

               ),
               Positioned(
                 left:12.0,
                 top: 15.0,
                 child: Hero(tag: bikes.bikesPic, 
                 child: Container(
                   height:110.0,
                   width:85.0,
                   decoration:BoxDecoration(
                     borderRadius: BorderRadius.circular(7.0),
                     image: DecorationImage(image: AssetImage(bikes.bikesPic),
                     fit:BoxFit.cover
                     )
                   )
                 )
                 )
                 ),
                 
               Positioned(
                   left: 22.0,
                   top: 130.0,
                   child: Column(
                     children: <Widget>[
                       Text(bikes.bikesName,
                        style:GoogleFonts.sourceSansPro(fontSize: 12.0),
                        
                       ),
                       Text(bikes.perdayrate,
                        style:GoogleFonts.sourceSansPro(fontSize: 12.0),),
                       Row(
                         children: [
                           Icon(Icons.star,
                           color: Colors.grey.withOpacity(0.5),
                           size:15.0,
                            ),
                            SizedBox(
                              width: 3.0,

                            ),
                            Text(bikes.rating,
                            style:GoogleFonts.sourceSansPro(fontSize: 11.0))
                         ],
                       )
                     ],

                   ),
                 ),
             ],
           ) ,
          ),
           
      );

    }  
}