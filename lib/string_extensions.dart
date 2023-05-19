extension StringExtensions on String{

  bool isValidEmail(){
    return RegExp(
     r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$"
    ).hasMatch(this);
  }
  //for required field
  bool isWhitespace() => this.trim().isEmpty;

//for number
  bool isValiddouble() => double.tryParse(this) !=null;

  bool isValidInt() => int.tryParse(this) != null;
  
}