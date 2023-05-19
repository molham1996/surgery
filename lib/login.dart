import './home.dart';
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'Password.dart';
import 'crateemail.dart';
import 'email.dart';
import 'my_input_theme.dart';
import 'string_extensions.dart';

  @override

class Login extends StatefulWidget {
  //name of file  dart
   static final ROUTE='/login';
  const Login({super.key, required this.title});

  final String title;

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var email = TextEditingController();
  var password = TextEditingController();
  bool obscurePassword = true;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar( title: Text(widget.title),),

      body:Form(
        key :_formKey,   
           /*
      Form  : هي طريقة لتجميع ال 
           DB و تخزينها في   client من طرف ال  data
      client  "sqllite "
   أكبر DB ليخزنها API ثم أرسالها للسيرفر عبر 
       MySQL أو oracle    مثل
        أي ممكن تخزينها local  أو على سيرفر .
       */
      /*
       valide Form  سنعمل:
hintText :TextField نص ظاهري لل  
 و بمجرد ما تبدأ بالكتابة فيها سيختفي .
Validator :   
 صحيحة أم لا data هي من ستتأكد إذا كانت ال 
 Function و هي عبارة عن 
  نعطيها string  و تُعيد string  تأخذ
 Data لو كل ل   
كانت مزبوطة فال Form Valid  
, و عندها يجب أن ننادي على الفورم , لذا يجب أن نعطيها 
GlobalKey  :
 قيمة فريدة معرّفة للفورم 
identifier  وهي مثل 
 Application على مستوى ال 
 FormState نخزن فيه    
أي احتفظ بحالة الفورم .ثم سنعطيها للفورم , كي يفهم أنها الفورم المقصودة
       */
     child:  Center(
     child : Column(
      
        children: <Widget>[

          SizedBox( height: 15, ),

         EmailField(),

          SizedBox( height: 15,),
             PasswordField(),

          const SizedBox( height: 15, ),

          Container(
            color: Colors.green,
            width: double.infinity,
            child: MaterialButton(
              onPressed: () {print(email.text); print(password.text);
               final isValid = _formKey.currentState!.validate();     
               print("Form is Valid");
               
               if(isValid)
               //ندخل للصفحة الرئيسية مع استبدال الصفحات السابقة
              {
             Navigator.of(context).pushReplacementNamed('/home');
                   //أو
             Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Home()));
              }
          
              },
              child: Text('LOGIN',
                  style: TextStyle(
                    color: Colors.white,
                  )),
            ),
          ),

          SizedBox( height: 15, ),

       Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
          
              MaterialButton(
                  onPressed: () { },
                  child:  Text('forget your password',
                    style: TextStyle(
                      color: Colors.blue[900],
                    ),
                  ),
                  
                  ),


              MaterialButton(
                  onPressed: () {
                    //باستخدام  MaterialPageRoute
                      // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => createnewemail()));
                     Navigator.of(context)
                .push(MaterialPageRoute(builder:(c) => createnewemail() ));
                // باستخدام  أو   NamedRoute
                         Navigator.of(context).pushNamed(createnewemail.ROUTE);                 
                  },
                  child: Text(
                    'sign up',
                    style: TextStyle(
                      color: Colors.blue[900],
                    ),
                  ),
                  
                  ),
            ],
          )
           ]
            //  .map((child) => Padding(
            //   padding: EdgeInsets.symmetric(vertical: 8.0),
            //   child : child,
            //  )) 
            //  .toList() , 
      ),
     
       ),
      ),
       );
  }
}
