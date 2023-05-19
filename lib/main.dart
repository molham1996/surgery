import './home.dart';
import './login.dart';
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'Password.dart';
import 'crateemail.dart';
import 'email.dart';
import 'my_input_theme.dart';
import 'string_extensions.dart';
import 'package:flutter/material.dart';
void main()
 {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {   
  return MaterialApp(
    
initialRoute: Login.ROUTE,
routes: {
  //نمرر اسم الكلاس
 Home.ROUTE :(c) => Home(),
  Login.ROUTE:(c) => Login(title: 'Flutter Demo Home Page'),
  createnewemail.ROUTE:(c)=> createnewemail(),
},

  //   /*Global Theme */
  //     //نضيف خاصية الثيم
       theme: ThemeData(    
        // primarySwatch: Colors.amber,
   // brightness: Brightness.dark,
  appBarTheme: AppBarTheme(color: Colors.amber, ),

    // buttonTheme: ButtonThemeData(
    //       buttonColor: Colors.deepPurple.shade600,
    //        shape: RoundedRectangleBorder(),
    //        textTheme: ButtonTextTheme.accent,         
    // ),

    // inputDecorationTheme: MyInputTheme().theme(),
    //    iconTheme: const IconThemeData(size: 300,  color: Colors.blue, ),//IconThemeData
    //       //نسق عام للنصوص و بالتالي في حال اردنا التغيير سيكون لمرة واحدة فقط
    //       textTheme: const TextTheme(     
    //         /*   headline1 ,  headline6 , bodyText2 ,headline ...
    //         key 
    //         مثل مفتاح لتنسيقات معينة
    //         */
    //       headline1: TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold,),
    //       headline6: TextStyle(fontSize: 10.0, fontStyle: FontStyle.italic,),
    //       bodyText2: TextStyle(fontSize: 10.0, fontFamily: 'Hind',),
    //       //headline: TextStyle(fontSize: 70, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic,),//TextStyle           
    //        // title: TextStyle(),
    //       //body1: TextStyle(color:Colors.green, fontFamily:'Georgia'),
    //    ),//TextTheme
  ),
  //       /* تغيير لون منطقة 
  //       mainArea , drawer*/
  //       primaryColor: Colors.red,
  //       //يؤثر بالشيء المختار
  //    //  accentColor: Colors.cyan,
  //       /*للتحكم بالأزرار  */
  //     //  buttonColor:Colors.blue,
  //       fontFamily: 'Georgia',
  //       /*selection
  //            يؤثر بالشيء المختار سواء زر أو تاب أو... */
  //     //  accentColor:Colors.cyan,
  //    ),//ThemeData

  //   /*instance from Home Class
  //   home : Home(),*/

      title: 'login',
      // theme: ThemeData(
        
      //   primarySwatch: Colors.amber,
      // ),
      home: const Login(title: 'Flutter Demo Home Page'),
    );
    
  }
  }
