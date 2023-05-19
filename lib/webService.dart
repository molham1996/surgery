import 'package:flutter/material.dart';
import 'customTextStyle .dart';

class Expansionpanel extends StatefulWidget {
  Expansionpaneltate createState() =>  Expansionpaneltate();
}
class NewItem {
  bool isExpanded;
 final String header;
  final Widget body;
 // final Icon iconpic;
 final ClipRRect iconpic;
  NewItem(this.isExpanded, this.header, this.body, this.iconpic);
}

class Expansionpaneltate extends State<Expansionpanel> {
  List<NewItem> items1 = <NewItem>[
    NewItem(
      false, // isExpanded ?
      //1
      'الجراحة العامة', // header

      Padding(//
        padding: EdgeInsets.all(20.0),
        child:
         Directionality(
          textDirection: TextDirection.rtl,
          child:
         Column(
          children: <Widget>[
            Text('استئصال البروستاتا الروبوتية', style: CustomTextStyle.nameOfTextStyleSon, textAlign: TextAlign.right,),
             Divider( color: Colors.grey[500],),
            Text('استئصال البنكرياس', style: CustomTextStyle.nameOfTextStyleSon, textAlign: TextAlign.right,),
             Divider( color: Colors.grey[500],),
            Text('استئصال الرحم', style: CustomTextStyle.nameOfTextStyleSon, textAlign: TextAlign.right,),
             Divider( color: Colors.grey[500],),
           Text('استئصال المرارة بالمنظار', style: CustomTextStyle.nameOfTextStyleSon, textAlign: TextAlign.right,),
            Divider( color: Colors.grey[500],),
           Text('استئصال المرارة', style: CustomTextStyle.nameOfTextStyleSon, textAlign: TextAlign.right,),
            Divider( color: Colors.grey[500],),
            Text('الدوالي', style: CustomTextStyle.nameOfTextStyleSon, textAlign: TextAlign.right,),
             Divider( color: Colors.grey[500],),
           Text('الفتق الجراحي (Incisional Hernias)', style: CustomTextStyle.nameOfTextStyleSon, textAlign: TextAlign.right,),
            Divider( color: Colors.grey[500],),
             Text('جراحة الفتق السري', style: CustomTextStyle.nameOfTextStyleSon, textAlign: TextAlign.right,),
              Divider( color: Colors.grey[500],),
           Text('حصوات الكلى وطرق إزالتها', style: CustomTextStyle.nameOfTextStyleSon, textAlign: TextAlign.right,),
            Divider( color: Colors.grey[500],),
     Text('علاج البواسير', style: CustomTextStyle.nameOfTextStyleSon, textAlign: TextAlign.right,),
      Divider( color: Colors.grey[500],),
             Text('علاج البواسير بالليزر', style: CustomTextStyle.nameOfTextStyleSon, textAlign: TextAlign.right,),
              Divider( color: Colors.grey[500],),
           Text('علاج الناسور الشرجي', style: CustomTextStyle.nameOfTextStyleSon, textAlign: TextAlign.right,),
            Divider( color: Colors.grey[500],),
             Text('علاج تضيق الصمام التاجي', style: CustomTextStyle.nameOfTextStyleSon, textAlign: TextAlign.right,),
              Divider( color: Colors.grey[500],),
           Text('عملية الختان', style: CustomTextStyle.nameOfTextStyleSon, textAlign: TextAlign.right,),
            Divider( color: Colors.grey[500],),
             Text('عملية الفتق الأربي', style: CustomTextStyle.nameOfTextStyleSon, textAlign: TextAlign.right,),
              Divider( color: Colors.grey[500],),
           Text('عملية تنظير الحالب', style: CustomTextStyle.nameOfTextStyleSon, textAlign: TextAlign.right,),
            Divider( color: Colors.grey[500],),
             Text('عملية تنظير الحالب', style: CustomTextStyle.nameOfTextStyleSon, textAlign: TextAlign.right,),
              Divider( color: Colors.grey[500],),
           Text('فغر الجهاز البولي (Urostomy)', style: CustomTextStyle.nameOfTextStyleSon, textAlign: TextAlign.right,),
      
          ]
        )
      ), // body
      ),
     // Icon(Icons.image) // iconPic
       ClipRRect(
     borderRadius: BorderRadius.circular(10.0),
      child:  Image.asset('assets/images/1.png',
        width: 55.0,
        height: 55.0,
        fit: BoxFit.fill,
     ),
 ),
    ),

    NewItem(
      false, // isExpanded ?
      //2
     'الجراحة اتجميلية', // header
      
      Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Text('إزالة حشوة السيليكون'),
                Divider( color: Colors.grey[500],),
            Text('ازالة الندب وآثار الجروح بتقنية Z-Plasty'),
                Divider( color: Colors.grey[500],),
             Text('ازالة الندب وآثار الجروح بتقنية W-Plasty'),
                 Divider( color: Colors.grey[500],),
              Text('ازالة الندب وآثار الجروح والحروق'),
                  Divider( color: Colors.grey[500],),
                 Text('تدلي الجفون الاسباب والعلاج'),
                     Divider( color: Colors.grey[500],),
            Text('تصغير الثدي'),
                Divider( color: Colors.grey[500],),
             Text('تغيير حشوة السيلكون'),
                 Divider( color: Colors.grey[500],),
              Text('تكبير الثدي بالدهون الذاتية'),
                  Divider( color: Colors.grey[500],),
                 Text('تكبير الثدي'),
                     Divider( color: Colors.grey[500],),
            Text('شد الصدر'),
                Divider( color: Colors.grey[500],),
             Text('شد الوجه بالخيوط'),
                 Divider( color: Colors.grey[500],),
              Text('شفط الدهون بالفيزر'),
                  Divider( color: Colors.grey[500],),
                 Text('عملية تجميل الأذن'),
                     Divider( color: Colors.grey[500],),
            Text('عملية تجميل الأنف'),
                Divider( color: Colors.grey[500],),
             Text('عملية شد البطن'),
                 Divider( color: Colors.grey[500],),
              Text('عملية شد الجفون'),
                  Divider( color: Colors.grey[500],),
               Text('عملية شد الذراعين'),
                   Divider( color: Colors.grey[500],),
                 Text('عملية شد الرقبة'),
                     Divider( color: Colors.grey[500],),
            Text('عملية شد الوجه'),
            
    
          ]
        )
      ), // body
      //Icon(Icons.image) // iconPic
       ClipRRect(
     borderRadius: BorderRadius.circular(10.0),
      child:  Image.asset('assets/images/2.png',
        width: 55.0,
        height: 55.0,
        fit: BoxFit.fill,
     ),
 ),
    ),


NewItem(
      false, // isExpanded ?
      //3
     'السمنة و السكري و التغذية', // header
    
      Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Text('البالون الذكي – البالون القابل للهضم'),
                Divider( color: Colors.grey[500],),
            Text('بالون المعدة'),
                Divider( color: Colors.grey[500],),
            Text('تحويل مسار المعدة'),
                Divider( color: Colors.grey[500],),
            Text('تكميم المعدة'),
                Divider( color: Colors.grey[500],),
            Text('حقن المعدة'),
                Divider( color: Colors.grey[500],),
            Text('عملية SADI-S لعلاج السمنة'),
     
          ]
        )
      ), // body
      //Icon(Icons.image) // iconPic
       ClipRRect(
     borderRadius: BorderRadius.circular(10.0),
      child:  Image.asset('assets/images/3.png',
        width: 55.0,
        height: 55.0,
        fit: BoxFit.fill,
     ),
 ),
    ),

NewItem(
      false, // isExpanded ?
      //4
      'العلاج الطبيعي و إعادة التأهيل', // header
 
      Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
           Text('إعادة التأهيل العصبي'),
               Divider( color: Colors.grey[500],),
            Text('إعادة التأهيل بعد العمليات الجراحية'),
                Divider( color: Colors.grey[500],),
            Text('إعادة تأهيل العضلات'),
                Divider( color: Colors.grey[500],),
            Text('اعادة التأهيل للسمنة'),
                Divider( color: Colors.grey[500],),
            Text('اعادة التاهيل بعد الاصابات'),
                Divider( color: Colors.grey[500],),
            Text('اعادة التاهيل بعد الحوادث'),
                Divider( color: Colors.grey[500],),
            Text('اعادة التاهيل بعد الكسور'),
                Divider( color: Colors.grey[500],),
            Text('اعادة التاهيل للرياضيين'),
                Divider( color: Colors.grey[500],),
            Text('اعادة التاهيل للمفاصل'),
                Divider( color: Colors.grey[500],),
            Text('اعادة تأهيل التصلب المتعدد'),
                Divider( color: Colors.grey[500],),
            Text('اعادة تأهيل السكتة الدماغية'),
                Divider( color: Colors.grey[500],),
            Text('اعادة تأهيل القلب'),
                Divider( color: Colors.grey[500],),
            Text('العلاج المائي'),
                Divider( color: Colors.grey[500],),
            Text('العلاج الوظيفي'),
                Divider( color: Colors.grey[500],),
            Text('الوخز بالإبر الجافة “Dry needling”'),
                Divider( color: Colors.grey[500],),
            Text('علاج اضطرابات الكلام'),
                Divider( color: Colors.grey[500],),
            Text('علاج الانزلاق الغضروفي'),
                Divider( color: Colors.grey[500],),
            Text('علاج الروماتيزم'),
                Divider( color: Colors.grey[500],),
            Text(' علاج الشلل الدماغي'),
                Divider( color: Colors.grey[500],),
            Text('علاج فتق العمود الفق'),
            Divider( color: Colors.grey[500],),
           
          ]
        )
      ), // body
  //    Icon(Icons.image) // iconPic
       ClipRRect(
     borderRadius: BorderRadius.circular(10.0),
      child:  Image.asset('assets/images/4.png',
        width: 55.0,
        height: 55.0,
        fit: BoxFit.fill,
     ),
 ),
    ),
  NewItem(
      false, // isExpanded ?
      //5
     'العلاج الطبيعي و الاستشفاء', // header
     
      Padding(//
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Text('العلاج بالأوزون'),
           Text('العلاج بالدلافين'),
            Text('العلاج بالمجال المغناطيسي'),
             Text('الوخز بالإبر الصينية'),     
          ]
        )
      ), // body
     // Icon(Icons.image) // iconPic
      ClipRRect(
     borderRadius: BorderRadius.circular(10.0),
      child:  Image.asset('assets/images/5.png',
        width: 55.0,
        height: 55.0,
        fit: BoxFit.fill,
     ),
 ),
    ),
NewItem(
      false, // isExpanded ?
      //6
      'العقم و الإنجاب', // header

      Padding(//
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Text('أطفال الانابيب'),
           Text('التلقيح الصناعي'),
            Text('تجميد البويضات'),
             Text('علاج العقم عند النساء'),     
              Text('علاج العقم عند الرجال'),
         
          ]
        )
      ), // body
     // Icon(Icons.image) // iconPic
       ClipRRect(
     borderRadius: BorderRadius.circular(10.0),
      child:  Image.asset('assets/images/6.png',
        width: 55.0,
        height: 55.0,
        fit: BoxFit.fill,
     ),
 ),
    ),
NewItem(
      false, // isExpanded ?
      //7
      'أمراض النساء و التوليد', // header
     
      Padding(//
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Text('توسيع وكحت الرحم'),
           Text('عكس ربط البوق بالمنظار'),
            Text('علاج الورم الغدي الليفي'),
             Text('علاج انسداد قناة فالوب بالقسطرة'),     
              Text('علاج بطانة الرحم المهاجرة'),
           Text('علاج خراج الثدي'),
            Text('علاج خلل التنسج العنقي'),
             Text('علاج هبوط الرحم'),     
              Text('عملية إزالة تكيس المبايض'),
           Text('عملية ربط البوق'),    
          ]
        )
      ), // body
    //  Icon(Icons.image) // iconPic
       ClipRRect(
     borderRadius: BorderRadius.circular(10.0),
      child:  Image.asset('assets/images/7.png',
        width: 55.0,
        height: 55.0,
        fit: BoxFit.fill,
     ),
 ),
), 
    NewItem(
      false, // isExpanded ?
      //8
      'تركيب أطراف صناعية', // header
       
      Padding(//
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Text('تركيب أطراف صناعية'),
          ]
        )
      ), // body
     // Icon(Icons.image) // iconPic
      ClipRRect(
     borderRadius: BorderRadius.circular(50.0),
      child:  Image.asset('assets/images/8.png',
        width: 55.0,
        height: 55.0,
        fit: BoxFit.fill,
     ),
    ),
    ),
    NewItem(
      false, // isExpanded ?
      //9
     'العظام و المفاصل', // header
   
      Padding(//
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Text('استبدال مفصل الورك'),
           Text('جراحة إصلاح الأوتار'),
            Text('جراحة استبدال الركبة'),
             Text('جراحة استبدال المرفق (الكوع)'),     
              Text('علاج إصبع القدم المطرقية'),
           Text('علاج الإصبع الزنادي'),
            Text('علاج التهاب المفاصل OA'),
             Text('علاج انحباس العصب الزندي'),     
              Text('علاج تشوه انثناء الركبة'),
           Text('علاج تمزق شفا الكتف'),
            Text('عملية إعادة بناء الرباط الصليبي الأمامي'),
         Text('عملية استبدال مفصل الكتف'),  
          Text('عملية تنظير الركبة'),
         Text('عملية تنظير مفصل الكتف'),  
              
          ]
        )
      ), // body
     // Icon(Icons.image) // iconPic
 ClipRRect(
     borderRadius: BorderRadius.circular(10.0),
      child:  Image.asset('assets/images/9.png',
        width: 55.0,
        height: 55.0,
        fit: BoxFit.fill,
     ),
    ),
    ),

    NewItem(
      false, // isExpanded ?
      //10
      'المخ و الأعصاب و العمود الفقري', // header
   
      Padding(//
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
             Text('إجراء البزل القطني'),  
            Text('إجراء خزعة نخاع العظم'),
           Text('استئصال أورام الغدة النخامية'),
            Text('استئصال عصب المفاصل الوجيهية بالترددات الراديوية'),
             Text('التحفيز العميق للدماغ'),     
              Text('التحفيز العميق للدماغ في علاج مرضى التصلب المتعدد'),
           Text('التحفيز العميق للدماغ لعلاج الاكتئاب'),
            Text('التحفيز العميق للدماغ لعلاج الصرع'),
             Text('التحفيز العميق للدماغ لعلاج مرضى باركنسون'),     
              Text('التشوه الشرياني الوريدي الدماغي، التشخيص والعلاج'),
           Text('الجنف وطرق علاجه'),
            Text('الورم العصبي السمعي وعلاجه'),
         Text('جراحة الغدة النخامية بالمنظار لإزالة الأورام'),  
            Text('جراحة حج القحف'),
           Text('زراعة مضخة باكلوفين'),
            Text('علاج أورام الدماغ'),
         Text('علاج أورام العمود الفقري'),   
            Text('علاج أورام قاعدة الجمجمة'),
            Text('علاج إصابة الضفيرة العضدية'),
         Text('علاج الصداع النصفي ( الشقيقة)'),  
            Text('علاج القيلة النخاعية السحائية'),
           Text('علاج تمدد الأوعية الدموية في الدماغ'),
            Text('عملية إستئصال القرص الغضروفي'),
         Text('عملية استئصال الصفيحة الفقرية'), 
          Text('عملية استئصال جزء من فقرات العنقية'),   
            Text('عملية الاستسقاء الدماغي ( تحويلة بطينية )'),
            Text('عملية الجنف بالمنظار، التكلفة والمميزات'),
         Text('عملية الصرع'),  
            Text('عملية تضيق العمود الفقري'),
           Text('عملية دمج الفقرات'),
            Text('عملية رأب الفقرات'),
         Text('التصوير بالرنين المغناطيسي (MRI) للعمود الفقري والدماغ'), 
          ]
        )
      ), // body
      //Icon(Icons.image) // iconPic
      

 ClipRRect(
     borderRadius: BorderRadius.circular(10.0),
      child:  Image.asset('assets/images/10.png',
        width: 55.0,
        height: 55.0,
        fit: BoxFit.fill,
     ),
    ),
    ),
    NewItem(
      false, // isExpanded ?
      //11
     'الأورا و السرطان', // header
       
      Padding(//
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Text('أنواع وعلاج أورام الحفرة الخلفية للدماغ'),
           Text('إجراء تنظير القولون'),
            Text('استئصال البروستاتا'),
             Text('استئصال الرحم بالمنظار'),     
              Text('استئصال الغدة الدرقية'),
           Text('استئصال اللوزتين'),
            Text('استئصال الورم الدبقي'),
             Text('استئصال الورم العضلي'),     
              Text('الاستئصال بالحرارة Radiofrequency Ablation'),
           Text('التنظير الداخلي وجراحة المناظير'),
            Text('الجراحة الإشعاعية بالتوضيع التجسيمي و (SBRT)'),
         Text('الجراحة الإشعاعية و أنواعها'),  
          Text('العلاج الإشعاعي'),     
              Text('العلاج الكيميائي'),
           Text('علاج سرطان الرأس والرقبة'),
            Text('علاج الانصمام الإشعاعي'),
             Text('علاج سرطان البنكرياس'),     
              Text('علاج سرطان الحنجرة'),
           Text('علاج سرطان الجلد'),
            Text('علاج سرطان الدم'),
         Text('علاج سرطان الفم'),   
          Text('علاج سرطان القولون'),  
          Text('علاج سرطان الكبد'),     
              Text('علاج سرطان الكلى'),
           Text('علاج سرطان المثانة'),
            Text('علاج سرطان المرارة'),
             Text('علاج سرطان المهبل'),     
              Text('علاج سرطان عنق الرحم'),
           Text('علاج سكين غاما'),
            Text('علاج سرطان الثدي'),   
                Text('الاستئصال الجزئي للثدي'), 
                Text('خزعة الثدي'), 
          ]
        )
      ), // body
    //  Icon(Icons.image) // iconPic
     ClipRRect(
     borderRadius: BorderRadius.circular(10.0),
      child:  Image.asset('assets/images/11.png',
        width: 55.0,
        height: 55.0,
        fit: BoxFit.fill,
     ),
 ),
    ),
    NewItem(
      false, // isExpanded ?
      //12
     'علاح الإدمان', // header
  
      Padding(//
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Text('الإقلاع عن التدخين بجلسة واحدة'),
           Text('علاج ادمان المخدرات'),
             
          ]
        )
      ), // body
    //  Icon(Icons.image) // iconPic
     ClipRRect(
     borderRadius: BorderRadius.circular(10.0),
      child:  Image.asset('assets/images/12.png',
        width: 55.0,
        height: 55.0,
        fit: BoxFit.fill,
     ),
 ),
    ),
    NewItem(
      false, // isExpanded ?
      //13
      'طب العيون', // header
      
      Padding(//
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Text('استئصال القرنية الضوئي الانكساري'),
           Text('استبدال العدسة الانكسارية'),
            Text('الجراحة الانكسارية القرنية'),
             Text('العين الاصطناعية'),     
              Text('جراحة إعتام عدسة العين بواسطة الليزر'),
           Text('زراعة العدسات التصحيحية'),
            Text('زراعة القرنية'),
             Text('زراعة حلقات القرنية'),     
              Text('علاج اعتلال الشبكية السكري'),
           Text('علاج التنكس البقعي'),
            Text('علاج المياه الزرقاء في العين (الزرق )'),
         Text('عملية الحول'),    
          Text('عملية الليزك'),
             Text('علاج الماء البيضاء جراحة اعتام عدسة العين'),     
             
          ]
        )
      ), // body
     // Icon(Icons.image) // iconPic
      ClipRRect(
     borderRadius: BorderRadius.circular(10.0),
      child:  Image.asset('assets/images/13.png',
        width: 55.0,
        height: 55.0,
        fit: BoxFit.fill,
     ),
 ),
    ),
    NewItem(
      false, // isExpanded ?
      //14
     'أذن أنف حنجرة', // header
           
      Padding(//
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
             Text('جراحة الجيوب الأنفية'),
           Text('رأب الحاجز الأنفي'),
            Text('زراعة قوقعة الاذن'),
             Text('زرع جذع الدماغ السمعي'),     
              Text('علاج أورام الغدة النكافية'),
           Text('علاج انسداد قناة استاكيوس'),
            Text('علاج تمزق طبلة الأذن عند الأطفال'),
         Text('عملية استئصال الخشاء'),    
            Text('عملية رأب طبلة الأذن'),
          
          ]
        )
      ), // body
     // Icon(Icons.image) // iconPic
      ClipRRect(
     borderRadius: BorderRadius.circular(10.0),
      child:  Image.asset('assets/images/14.png',
        width: 55.0,
        height: 55.0,
        fit: BoxFit.fill,
     ),
 ),
    ),
    NewItem(
      false, // isExpanded ?
      //15
      'طب الأسنان', // header
     
      Padding(//
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Text('بدلة الأسنان'),
           Text('تبييض الأسنان'),
            Text('تجميل الأسنان'),
             Text('تركيب عدسات الأسنان'),     
              Text('تلبيس الأسنان الخطوات والنتائج'),
           Text('جراحة الفم والوجه والفكين'),
            Text('زراعة الأسنان أنواعها ومشكلاتها وتكلفتها'),
             Text('طب أسنان الأطفال'),     
              Text('علاج أمراض اللثة'),
           Text('قشور الخزف'),
            Text('معالجة قناة الجذر'),
    
          ]
        )
      ), // body
     // Icon(Icons.image) // iconPic
      ClipRRect(
     borderRadius: BorderRadius.circular(10.0),
      child:  Image.asset('assets/images/15.png',
        width: 55.0,
        height: 55.0,
        fit: BoxFit.fill,
     ),
 ),
    ),

    NewItem(
      false, // isExpanded ?
      //16
     'زراعة الأعضاء', // header
         
      Padding(//
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Text('زراعة الكبد'),
           Text('زرع الكلى'),
            Text('عملية زراعة نخاع العظم'),
             Text(''),     
             
          ]
        )
      ), // body
    //  Icon(Icons.image) // iconPic
     ClipRRect(
     borderRadius: BorderRadius.circular(10.0),
      child:  Image.asset('assets/images/16.png',
        width: 55.0,
        height: 55.0,
        fit: BoxFit.fill,
     ),
 ),
    ),
   NewItem(
      false, // isExpanded ?
      //17
      'حراحة القلب و الأوعية', // header       
      Padding(//
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Text('أمراض القلب لدى الأطفال'),
           Text('اختبار الطاولة المائلة'),
            Text('الاستئصال القلبي القسطري'),
             Text('علاج تشوه الحاجز الأذيني'),     
              Text('جراحة استبدال الصمام الأبهري'),
           Text('رأب الأوعية التاجية'),
            Text('زراعة القلب الصناعي'),
             Text('زراعة جهاز تقويم نظم القلب وإزالة الرجفان'),     
              Text('علاج القناة الشريانية السالكة'),
           Text('علاج الورم المخاطي الأذيني'),
            Text('علاج تشوه الحاجز البطيني'),
         Text('علاج تضيق الصمام ثلاثي الشرف'),  
            Text('علاج رباعية فالو'),
            Text('عملية إصلاح صمام القلب'),
             Text('عملية استئصال الشريان التاجي'),     
              Text('عملية استبدال صمام القلب'),
           Text('عملية تحويل مسار الشريان التاجي'),
            Text('قسطرة القلب'),
         Text('مضخة البالون داخل الأبهر'),      
          ]
        )
      ), // body
     // Icon(Icons.image) // iconPic
      ClipRRect(
     borderRadius: BorderRadius.circular(10.0),
      child:  Image.asset('assets/images/17.png',
        width: 55.0,
        height: 55.0,
        fit: BoxFit.fill,
     ),
 ),
    ),

  ];


  footer(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 30),
                child: Text(
                  "احجز الأن",
                  style: CustomTextStyle.nameOfTextStyleFatherLight.copyWith(color:CustomTextStyle.primaryColor, fontSize: 12),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 30),
                child: Text(
                  "",
                  style: CustomTextStyle.nameOfTextStyleFatherLight.copyWith(color: CustomTextStyle.primaryColor, fontSize: 14),
                ),
              ),
            ],
          ),
          CustomTextStyle.getSizedBox(height: 8),

              ElevatedButton(
                child:  Text('استشر الأطباء الأن'),
                 onPressed: () {},
            //  Navigator.push(context, new MaterialPageRoute(builder: (context) => CheckOutPage()));
    
               style: ElevatedButton.styleFrom(
                primary: CustomTextStyle.primaryColor,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: CustomTextStyle.nameOfTextStyleButton,
              //   padding: EdgeInsets.only(top: 12, left: 60, right: 60, bottom: 12),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(24))),
                
                ), ),
          CustomTextStyle.getSizedBox(height: 8),
        ],
      ),
      margin: EdgeInsets.only(top: 16),
    );
  }

  createHeader() {
    return Column(
      children: [
        Container(
          alignment: Alignment.topCenter,
          child: Text(
          "مرحباً بكم في مركزنا",
            style: CustomTextStyle.nameOfTextStyleFather.copyWith(fontSize: 16, color:CustomTextStyle.primaryColor ,),
          ),
          margin: EdgeInsets.only(left: 12, top: 12),
        ),
          CustomTextStyle.getSizedBox(height: 10),
          Text('نغطي كافة التخصصات الطبية',style: CustomTextStyle.nameOfTextStyleFather,  textAlign: TextAlign.center,),
                    CustomTextStyle.getSizedBox(height: 10),
                  Text('إن شبكة المشافي و الأطباء . تمكننا من اختيار أفضل علاج لك بأقل كلفة ممكنة',style: CustomTextStyle.nameOfTextStyleSon, textAlign: TextAlign.center,), 
                CustomTextStyle.getSizedBox(height: 10),
      ],
    );
  }
 Widget _buildPanel( List<NewItem> items)  {          
return ListView(
  children : [
         Padding(
          padding: EdgeInsets.all(10.0),
          child: ExpansionPanelList(
            expansionCallback: (int index, bool isExpanded) {
              setState(() {
                items[index].isExpanded = !items[index].isExpanded;
              });
            },
            children:
             items.map((NewItem item) {
              return ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return  ListTile(
                    leading: item.iconpic,
                    title:  Text(
                      item.header,
                      textAlign: TextAlign.center,
                      style:  CustomTextStyle.nameOfTextStyleFather,
                    )
                  );
                },
                isExpanded: item.isExpanded,
                body: item.body,
              );
            }).toList(),
          ),
         ),

  ],);

//return list;
  
 }

@override
 Widget build(BuildContext context) {
    return Scaffold (     
body :Builder(
        builder: (context) {
          return  Directionality(
             textDirection: TextDirection.rtl,
          child :Column(
           crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[ createHeader(), _buildPanel(items1), footer(context)],
          
          ),);
        },
      ),

  
    );  
  }
 }