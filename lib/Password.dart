import 'package:flutter/material.dart';
import 'string_extensions.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool obscurePassword = true;
   var password = TextEditingController();
  @override
  Widget build(BuildContext context) {
  return TextFormField(
      validator: (s){
        if(s!.isWhitespace()){
          return "This is a required field";

        }
      },
    
            keyboardType: TextInputType.visiblePassword,
            //كلمة السر مخفية
            obscureText: obscurePassword,
            onFieldSubmitted: ((value) {
              print(value);
            }),
            controller: password,
            decoration: InputDecoration(
                labelText: "enter your password",
                labelStyle:
                    TextStyle(fontSize: 15, color: Colors.grey.shade400),
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: MaterialButton(
                    // ignore: sort_child_properties_last
                    child: Icon(
                      obscurePassword ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: (() {
                      setState(() {
                        obscurePassword = !obscurePassword;
                      });
                    })),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),

            //كتابة كلشي انكتب سواء مسحت او غيرت  بيديك الجديد+القديم
            onChanged: (value) {
              print(value);
            },
          ); 
  }

//    Widget build(BuildContext context) {
//     return TextFormField(
//       validator: (s){
//         if(s!.isWhitespace()){
//           return "This is a required field";

//         }
//       },
//       obscureText: obscurePassword,
//       keyboardType: TextInputType.visiblePassword,
//       decoration: InputDecoration(
//         labelText: "Password field",
//         helperText: "",
//         hintText: "password",
//         suffixIcon: IconButton(
//           onPressed: () => setState(()=> obscurePassword = !obscurePassword),
//           /*
//          TextField أريد متابعة التغييرا ت التي تحصل على 
//            عندما يقوم المستخدم بالكتابة , أي المستخدم يكتب و أنا أقترح عليه . فالموضوع كيف أتابع و اّخذ هذه التغييرا ت
// و يتم ذلك من خلال طريقتين :
// onChanged() , TextEditingController
//            */
//           icon: Icon(
//             obscurePassword  ? Icons.visibility : Icons.visibility_off,
//             color : Colors.blue,
//           ),
//         ),
//       ),
//     );
//   }
}