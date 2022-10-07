import 'package:domiat/View/HomeView.dart';
import 'package:flutter/material.dart';
import 'package:mobile_number/mobile_number.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
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

 String _mobileNumber = '';
  List<SimCard> _simCard = <SimCard>[];

// function for get all numbers phone from phone 
 Future<void> initMobileNumberState() async {
    if (!await MobileNumber.hasPhonePermission) {
      await MobileNumber.requestPhonePermission;
      return;
    }
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      _mobileNumber = (await MobileNumber.mobileNumber)!;
      _simCard = (await MobileNumber.getSimCards)!;
  print('======================================');
  print(_simCard.length);
  print('======================================');

    } on PlatformException catch (e) {
      debugPrint("Failed to get mobile number because of '${e.message}'");
    }


  }
}