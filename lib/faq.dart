import 'package:final_project/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:final_project/home_page.dart';


  void main(){


    
  }

class faq extends StatefulWidget {
  @override
  _faqState createState() => _faqState();
}

class _faqState extends State<faq> {

  Future < bool> _onBackPressed(){
    return showDialog(
      context: context,
       builder: (BuildContext context){
        return AlertDialog(
          title: Text ('Are You Sure ?'),
          content: Text ('You are going to leave the page !'),
          actions: <Widget>[
            FlatButton(
              child: Text('NO'), 
              onPressed: () {
                Navigator.of(context).pop(false);


              },
            ),
            FlatButton(
              child: Text('YES'), 
              onPressed: () {
                Navigator.of(context).pop(true);


              },
            ),

          ],
        );

      }
    
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      home: Scaffold(
        appBar: AppBar(
         elevation: 0.1,
         title: const  Text('FAQ', style:TextStyle(color:Colors.black),),
         backgroundColor: Colors.green,
           leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.black),
   
    //arrow button onpressed
    onPressed: () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => home_page()));
     IconButton(
            icon: Icon(Icons.arrow_back), 
            );
    }
  ), 

        
        ),
      
  body: WillPopScope(
          onWillPop: _onBackPressed,
          child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index)=>EntryItem(
            data[index]
            ),
        
        ),
          
        )
      )
      
    );
 
 
  }
}
class Entry {
  final String title;
  final List<Entry> 
   children;
  
  Entry(this.title, [this.children =const <Entry>[]]);
}
final List<Entry> data = <Entry>[
  Entry(
    'Booking Cancellation',
    <Entry>[
      Entry('Will I get a refund if I cancel ?',
       <Entry>[
         Entry('Upon'
         )

       ]
      ),
      
    ],
  ),
    
  Entry(    
    'Bookings',
    <Entry>[
      Entry('paragraph')
    ]
    
  ),
];
class EntryItem extends StatelessWidget{
  const EntryItem(this.entry);
  final Entry entry;

  Widget _buildTiles(Entry root){
    if (root.children.isEmpty){
      return ListTile(
        title: Text(root.title),
      );
    }
    return  ExpansionTile(
      key:PageStorageKey<Entry>(root),
      title: Text(root.title),
      children: root.children.map<Widget>(_buildTiles).toList(),
    );

  }

  Widget build(BuildContext context){
    return _buildTiles(entry);
  }
}