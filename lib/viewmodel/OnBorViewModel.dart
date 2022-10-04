import 'package:domiat/View/HomeView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnBordingViewModel{
String nameApp = 'دليل دمياط السياحي';
String title= 'فكرة التطبيق ؟';

String description = '''
ساعدنا في معرفة الاماكن في دمياط وعلى كل مساعدة سوف تأخد عدد من النقاط وعند كلل عدد من النقاط 
سوف نفاجئك بجائزة مميزة بداية من كروت الى الهواتف المميزة لا يمكنك توقغ جوائزنا فقط انطلق وساعدنا
''';

void rout(context){
  Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context) =>  HomeView()),(route) => false,);
}

}