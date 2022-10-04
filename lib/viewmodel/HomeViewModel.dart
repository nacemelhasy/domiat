import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:domiat/componets/allCompontes.dart';
import 'package:domiat/componets/defaultCS.dart';
import 'package:domiat/main.dart';
import 'package:domiat/rep/repositry.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeViewModel {
  Repo repo = new Repo();

  String urlPage =
      'https://www.saaih.com/%D9%85%D8%B5%D8%B1/%D8%AF%D9%85%D9%8A%D8%A7%D8%B7';
  String appBarText = 'عدد النقاط';
  String leadingAppBar = 'زود نقاطك';

  String TextHintDialog = '''لزيادة عدد نقاطك تحتاج الى تزودينا بموقع من مواقع
 دمياط على سبيل المثال تكتب في الاسم محلات شقاوة للملابس وفي الوصف دمياط شارع نافع 
 بجوار مركز اسامه خليل للأشعة
 وسوف تحصل على نقاط
''';
  String buttonOfSend = 'أرسل';
  String successSent =
      'تهانينا عند وصولك لي  كلا من 20 أو 40 أو 60 نقطة أي ضعف العدد سوف تحصل على جائزة';
   static int points = 0  ;

  GlobalKey<FormState> keyFiled = new GlobalKey<FormState>();

// for show dilaog plus points
  void showDialog(context) {
    awesome(context,
        body: SizedBox(
          height: height(context) * 0.6,
          child: Form(
              key: keyFiled,
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Column(
                  children: [
                    // for show hint for explan how to plus point
                    SizedBox(
                      height: height(context) * 0.2,
                      width: width(context) * 0.6,
                      child: text(context, TextHintDialog,
                          textAlign: TextAlign.center),
                    ),
                    // for name field
                    SizedBox(
                      height: height(context) * 0.1,
                      child: cFormFiled(
                        context,
                        validator: (val) {
                          if (val.toString().length < 5) {
                            return 'الرجاء لا تترك كتابة اسم الموقع';
                          }
                          return null;
                        },
                        hintText: 'الأسم',
                      ),
                    ),
                    // for description field
                    SizedBox(
                      height: height(context) * 0.1,
                      child: cFormFiled(
                        context,
                        validator: (val) {
                          if (val.toString().length < 5) {
                            return 'الرجاء لاتترك  كتابة وصف الموقع';
                          }
                          return null;
                        },
                        hintText: 'الوصف',
                      ),
                    ),

                    // boutton for sent and add points
                    ElevatedButton.icon(
                        onPressed: () {
                          if (keyFiled.currentState!.validate()) {
                            // plus number of point
                            points++;
                            // back screen
                            Navigator.pop(context);
                            // show dialog
                            awesome(context,
                                dialogType: DialogType.SUCCES,
                                body: SizedBox(
                                  height: height(context) * 0.12,
                                  child: text(context, successSent,
                                      textAlign: TextAlign.right),
                                ));
                            // for save point
                            repo.setInt(key: 'points', value: points);
                          }
                        },
                        icon: Icon(Icons.send),
                        label: text(context, buttonOfSend))
                  ],
                ),
              )),
        ));
  }
}
