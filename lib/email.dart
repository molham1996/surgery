import 'package:flutter/material.dart';
import 'string_extensions.dart';

class EmailField extends StatelessWidget {
   EmailField({super.key});
    var email = TextEditingController();
  bool obscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return    TextFormField(
            //مشان نلاقي ال@ فورا ضمن الكيبورد ممكن نكتبو فقط ارقام بنحط دوت نمبر
            keyboardType: TextInputType.emailAddress,
               validator: (s)
               {
        if(!s!.isValidEmail()){   return "Enter a vlaid email"; }
               },
            controller: email,
            decoration: InputDecoration(
                labelText: "enter your email :",
                labelStyle:TextStyle(fontSize: 15, color: Colors.grey.shade400),
                prefixIcon: const Icon(Icons.email),
                border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(10))),
            //انا خلصت الكتابة طباعة الاسم المكتوب بالكونسول
            onFieldSubmitted: ((value) { print(value);}),
            //كتابة كلشي انكتب سواء مسحت او غيرت  بيديك الجديد+القديم
            onChanged: (value) {print(value);},
          );
    
  }
  //   Widget build(BuildContext context) {
  //   return TextFormField(
  //     keyboardType: TextInputType.emailAddress,
  //     validator: (s){
  //       if(!s!.isValidEmail()){
  //         return "Enter a vlaid email";
  //       }
  //     },
  //     decoration: const InputDecoration(
  //       labelText: "Email field",
  //       helperText: "",
  //       hintText: "email@test.com",
  //     ),
  //   );
  // }
}