// ignore_for_file: deprecated_member_use

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';



///////////////////////////////////////////////// Awesem dialog //////////////////////////////////////////////////////////////////////
awesome(BuildContext context,
        {
          Function? btnOkOnPress,
        Function? btnCancelOnPress,
        String btnCancelText = 'الغاء',
        String btnOkText = 'موافق',
        DialogType dialogType = DialogType.INFO,
        AnimType animType = AnimType.SCALE,
        String title = 'ألف مبرووووووووووووووووووووووووك',
        String? desc,
        Widget? body,
        Color btnOkColor = Colors.blue,
        Color btnCancelColor = Colors.blue,
        Duration? autoHide,
         Color dialogBackgroundColor =   Colors.blue,
        bool dismissOnTouchOutside = true}) =>
    AwesomeDialog(
      dialogBackgroundColor: dialogBackgroundColor,
        dismissOnTouchOutside: dismissOnTouchOutside,
        autoHide: autoHide,
        buttonsTextStyle: Theme.of(context).textTheme.bodyText1,
        btnOkColor: Colors.blue,
        btnCancelColor: Colors.blue,
        btnCancelText: btnCancelText,
        btnOkText: btnOkText,
        borderSide: BorderSide(
          color: Colors.blue,
          width: 5
        ),
        // body: ,//طبعا البدي يقبل الويدت الي تبيها فيه عادي
        context: context, //
        dialogType:
            dialogType, //هذا شكل الصورة المتحركة الي تطلع يعطوك طبعا هم وحده
        animType:
            animType, //هذي طريقة خشه الديالوق من لوطا لفوق ولا من يمين لليسار وهك
        title: title,
        //عنوان عالشاشة
        desc: desc,
        //هنا اكتب الي تبيها
        // btnCancelOnPress: btnCancelOnPress, //هذي للكانسل
        // btnOkOnPress: btnOkOnPress, //هذي للموافق
        body: body)
      ..show();

///////////////////////////////////////////////// END Awesem dialog //////////////////////////////////////////////////////////////////////
