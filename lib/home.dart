

import 'package:flutter/material.dart';
import 'Expansionpanel.dart';

class Home extends StatefulWidget {
  static final ROUTE='/home';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffFF0000),
          title: // Container(
           //  padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.1),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
 ClipRRect(
     borderRadius: BorderRadius.circular(50.0),
      child:  Image.asset('assets/images/logo.jpg',
        width: 55.0,
        height: 55.0,
        fit: BoxFit.fill,
     ),
 ),
       const Text(" "),
          const Text("our  Clinics"),
       
           ],
          ),
        //  ),
   centerTitle: true,
          
          elevation: 10,

          leading : const Icon(Icons.arrow_back_ios) ,
          
        ),
        backgroundColor: Colors.grey[100],
      
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: ListView(
            children: <Widget>[
              Row(
                children: <Widget>[
                  new Expanded(
                      child: GestureDetector(
                          // onTap: () {
                          //   Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (context) => Users()));
                          // },

                          child: Container(
                            margin: EdgeInsets.all(5.0),
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.0)),
                            child: Column(
                              children: <Widget>[
                                new Icon(
                                  Icons.apps_outlined ,
                                  size: 80.0,
                                  color: Colors.green,
                                ),
                                new Text(
                                  "الخدمات",
                                  style: TextStyle(fontSize: 18.0),
                                )
                              ],
                            ),
                          ))),

                  new Expanded(
                      child: GestureDetector(
                    // onTap: () {
                    //   Navigator.push(context,
                    //       MaterialPageRoute(builder: (context) => Category()));
                    // },
                    child: Container(
                      margin: EdgeInsets.all(5.0),
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0)),
                          child:GestureDetector(
                               onTap: () {
                      Navigator.push(context,
                         MaterialPageRoute(builder: (context) => Expansionpanel()));
                    },
                      child: Column(
                        children: <Widget>[
                          new Icon(
                            Icons.category,
                            size: 80.0,
                            color: Colors.orange,
                          ),
                          new Text(
                            "العيادات",
                            style: TextStyle(fontSize: 18.0),
                          )
                        ],
                      ),
                          ),
                    ),
                  )),
                ],
              ),
              Row(
                children: <Widget>[
                  new Expanded(
                      child: GestureDetector(
                    // onTap: () {
                    //   Navigator.push(context,
                    //       MaterialPageRoute(builder: (context) => Delivery()));
                    // },
                    child: Container(
                      margin: EdgeInsets.all(5.0),
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Column(
                        children: <Widget>[
                          new Icon(
                            Icons.assignment_ind_outlined,
                            size: 80.0,
                            color: Colors.red,
                          ),
                          new Text(
                            "نتائج عملياتنا",
                            style: TextStyle(fontSize: 18.0),
                          )
                        ],
                      ),
                    ),
                  )),
                  new Expanded(
                      child: Container(
                    margin: EdgeInsets.all(5.0),
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Column(
                      children: <Widget>[
                        new Icon(
                          Icons.badge_outlined,
                          size: 80.0,
                          color: Colors.blue,
                        ),
                        new Text(
                          "آراء عملاؤنا",
                          style: TextStyle(fontSize: 18.0),
                        )
                      ],
                    ),
                  )),
                ],
              ),
              Row(
                children: <Widget>[
                  new Expanded(
                      child: Container(
                    margin: EdgeInsets.all(5.0),
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Column(
                      children: <Widget>[
                        new Icon(
                          Icons.add_call,
                          size: 80.0,
                          color: Colors.lime,
                        ),
                        new Text(
                          "الحصول على استشارة",
                          style: TextStyle(fontSize: 18.0),
                        )
                      ],
                    ),
                  )),
                  new Expanded(
                      child: Container(
                    margin: EdgeInsets.all(5.0),
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Column(
                      children: <Widget>[
                        new Icon(
                          Icons.assignment_late_outlined,
                          size: 80.0,
                          color: Colors.orange,
                        ),
                        new Text(
                          "من نحن ",
                          style: TextStyle(fontSize: 18.0),
                        )
                      ],
                    ),
                  )),
                ],
              ),
            ],
          ),//listview

        ));
  }
}
