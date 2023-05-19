import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

import 'home.dart';

class createnewemail extends StatefulWidget {
  static final ROUTE = '/crateemail';
  const createnewemail({super.key});

  @override
  State<createnewemail> createState() => _createnewemailState();
}

enum SingingCharacter { f, m }

class _createnewemailState extends State<createnewemail> {
  final _formKey = GlobalKey<FormState>();
  var email = TextEditingController();
  var password = TextEditingController();
  String dropdownvalue = 'Aleppo';
  bool obscurePassword = true;
  var _character;
  // List of items in our dropdown menu
  var city = [
    'Aleppo',
    'Damascus',
    'lattakia',
    'idleb',
  ];

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: MaterialButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Icon(Icons.arrow_back),
          ),
          title: const Text("create new email",
              style: TextStyle(
                color: Colors.purple,
                fontSize: 24,
                fontWeight: FontWeight.w400,
              ))),
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            //مشان نلاقي ال@ فورا ضمن الكيبورد ممكن نكتبو فقط ارقام بنحط دوت نمبر
            keyboardType: TextInputType.emailAddress,
            controller: email,
            decoration: InputDecoration(
                labelText: "enter your name :",
                labelStyle:
                    TextStyle(fontSize: 15, color: Colors.grey.shade400),
                prefixIcon: const Icon(Icons.pending),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
            //انا خلصت الكتابة طباعة الاسم المكتوب بالكونسول
            onFieldSubmitted: ((value) {
              // ignore: avoid_print
              print(value);
            }),
            //كتابة كلشي انكتب سواء مسحت او غيرت  بيديك الجديد+القديم
            onChanged: (value) {
              print(value);
            },
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            //مشان نلاقي ال@ فورا ضمن الكيبورد ممكن نكتبو فقط ارقام بنحط دوت نمبر
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                labelText: "last name :",
                labelStyle:
                    TextStyle(fontSize: 15, color: Colors.grey.shade400),
                prefixIcon: const Icon(Icons.pending),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
            //انا خلصت الكتابة طباعة الاسم المكتوب بالكونسول
            onFieldSubmitted: ((value) {
              // ignore: avoid_print
              print(value);
            }),
            //كتابة كلشي انكتب سواء مسحت او غيرت  بيديك الجديد+القديم
            onChanged: (value) {
              print(value);
            },
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            //مشان نلاقي ال@ فورا ضمن الكيبورد ممكن نكتبو فقط ارقام بنحط دوت نمبر
            keyboardType: TextInputType.number,

            decoration: InputDecoration(
                labelText: "your age:",
                labelStyle:
                    TextStyle(fontSize: 15, color: Colors.grey.shade400),
                prefixIcon: const Icon(Icons.pending),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
            //انا خلصت الكتابة طباعة الاسم المكتوب بالكونسول
            onFieldSubmitted: ((value) {
              // ignore: avoid_print
              print(value);
            }),
            //كتابة كلشي انكتب سواء مسحت او غيرت  بيديك الجديد+القديم
            onChanged: (value) {
              print(value);
            },
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Text(
                'city:',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 10),
              DropdownButton(
                // Initial Value
                value: dropdownvalue,

                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),

                // Array list of items
                items: city.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
            ],
          ),
          RadioListTile<SingingCharacter>(
            title: const Text('famale'),
            value: SingingCharacter.f,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
          RadioListTile<SingingCharacter>(
            title: const Text(' male'),
            value: SingingCharacter.m,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
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
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            //كلمة السر مخفية
            obscureText: obscurePassword,
            onFieldSubmitted: ((value) {
              print(value);
            }),
            controller: password,
            decoration: InputDecoration(
                labelText: "confirm your password",
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
          ),
          const SizedBox(
            height: 10,
          ),
          CheckboxListTile(
            title: Text("save your password"),
            //fillColor: MaterialStateProperty.resolveWith(Colors.red),
            checkColor: Colors.white,
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            },
            controlAffinity:
                ListTileControlAffinity.leading, //  <-- leading Checkbox
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.green,
            width: double.infinity,
            child: MaterialButton(
              onPressed: () {
                final isValid = _formKey.currentState!.validate();
                print(email.text);
                print(password.text);

                print("Form is Valid");
                if (isValid) {
                  //ندخل للصفحة الرئيسية مع استبدال الصفحات السابقة
                  {
                    Navigator.of(context).pushReplacementNamed('/home');
                    //أو
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => Home()));
                  }
                }
              },
              child: Text('save',
                  style: TextStyle(
                    color: Colors.white,
                  )),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
