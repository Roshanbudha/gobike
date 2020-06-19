import 'package:final_project/models/features.dart';
import 'package:flutter/material.dart';
import 'package:final_project/models/bikes.dart';
import 'package:final_project/bikelist.dart';
import  'package:flutter/src/widgets/text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:final_project/individualbike.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'dart:async';



class individualbike extends StatefulWidget {
  final Bikes selectedBikes;
  individualbike({this.selectedBikes});
  @override
  _individualbikeState createState() => _individualbikeState();
}

class _individualbikeState extends State<individualbike> {
  final features= allFeatures;

  @override
  
  Widget build(BuildContext context) {
    Widget imageCarousel = Hero(tag: widget.selectedBikes.bikesPic,
    child: new Container(
    height: 200.0,
    
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage(widget.selectedBikes.bikesPic),
        AssetImage(widget.selectedBikes.bikesPic),
        AssetImage(widget.selectedBikes.bikesPic),
      ],
      autoplay: true,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
    ),
  )
    );
    return Scaffold (
      backgroundColor: Color(0xFFFAF6ED),
      body: ListView(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon:
                      IconButton(icon: Icon(Icons.search), onPressed: null),
                  hintText: 'Search',
                  hintStyle: GoogleFonts.sourceSansPro(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF5E5B54)),
                  suffixIcon: IconButton(
                      icon: Icon(Icons.arrow_back), onPressed: null),
                ),
              )),
              Container(child:  new ListView(
                    children: <Widget>[
                      imageCarousel
                    ],


          ) 
              ),
          Container(
              height: MediaQuery.of(context).size.height - 200.0,
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 1,
                mainAxisSpacing: 1,
                childAspectRatio: 0.67,
                primary: false,
                children: <Widget>[
                  ...features.map((e) {
                    return buildFeaturesGrid(e);
                  }).toList()
                ],
              ))
        ],
      ),
    );
  }
      
      
    
  
  buildFeaturesGrid(Features features){
      return  Padding(
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
                 child: Hero(tag: features.featuresPic, 
                 child: Container(
                   height:110.0,
                   width:85.0,
                   decoration:BoxDecoration(
                     borderRadius: BorderRadius.circular(7.0),
                     image: DecorationImage(image: AssetImage(features.featuresPic),
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
                       Text(features.featuresName,
                        style:GoogleFonts.sourceSansPro(fontSize: 12.0),
                        
                       ),
                       Text(features.featuresName,
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
                            Text(features.featuresName,
                            style:GoogleFonts.sourceSansPro(fontSize: 11.0))
                         ],
                       )
                     ],

                   ),
                 ),
             ],
           ) ,
           
           
      );

    }  
}