// ignore_for_file: deprecated_member_use

import 'package:auto_size_text/auto_size_text.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

import 'defaultCS.dart';

//////////////////////////////////////////// TextFormFiled ///////////////////////////////////////////
Widget cFormFiled(context,
        {String? Function(String?)? validator,
        void Function(String?)? save,
        String? labelText,
        String? hintText,
        String? initialValue,
        String? fontFamily = "Amiri",
        Color? colorText = Colors.black,
        Color? colorSide = Colors.black,
        double widthSide = 2.0,
        int minLines = 1,
        int maxLines = 100,
        bool typeBorder = false,
        Widget? prefixIcon,
        Widget? suffixIcon,
        bool obscureText = false,
        bool enabled = true,
        TextInputType? keyboardType,
        Key? key,
        Color colorSideBorder = Colors.white,
        TextAlign textAlign = TextAlign.start,
        TextDirection textDirection = TextDirection.rtl,
        void Function(String)? onFieldSubmitted,
        TextEditingController? controller,
        void Function()? onTap}) =>
    Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 2.0,
      child: TextFormField(
        controller: controller,
        textDirection: textDirection,
        onFieldSubmitted: onFieldSubmitted,
        onTap: onTap,
        cursorColor: const Color.fromARGB(255, 2, 2, 2),
        key: key,
        keyboardType: keyboardType,
        initialValue: initialValue,
        validator: validator,
        onSaved: save,
        minLines: minLines,
        maxLines: maxLines,
        obscureText: obscureText,
        enabled: enabled,
        textAlign: textAlign,
        decoration: InputDecoration(
            focusColor: Colors.white,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide:
                    BorderSide(color: colorSideBorder, width: widthSide)),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            labelStyle: TextStyle(fontFamily: fontFamily, color: colorText),
            labelText: labelText,
            hintText: hintText,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide:
                    BorderSide(color: colorSideBorder, width: widthSide)),
            border: typeBorder == false
                ? OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.white, width: widthSide))
                : const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2))),
      ),
    );
//////////////////////////////////////////// END TextFormFiled ///////////////////////////////////////////

//////////////////////////////////////////// DropdownButton ///////////////////////////////////////////
Widget cDropdownButton(context,
        {String? hintText = 'اختار القسم',
        Color? hintColor = Colors.black,
        @required var value,
        void Function(Object?)? onChanged,
        @required List<String>? items,
        Color? itemColor = Colors.black,
        Color? dropdownColor}) =>
    DropdownButton(
      hint: Center(child: text(context, hintText!)),
      value: value,
      dropdownColor: dropdownColor,
      items: items!.map((e) {
        return DropdownMenuItem(
          child: Center(child: fitted(text(context, e))),
          value: e,
        );
      }).toList(),
      onChanged: onChanged,
    );
///////////////////////////////////////////////// Awesem dialog //////////////////////////////////////////////////////////////////////
awesome(BuildContext context,
        {
          Function? btnOkOnPress,
        Function? btnCancelOnPress,
        String btnCancelText = 'الغاء',
        String btnOkText = 'موافق',
        DialogType dialogType = DialogType.INFO,
        AnimType animType = AnimType.SCALE,
        String title = 'تنبيه',
        String? desc,
        Widget? body,
        Color btnOkColor = Colors.blue,
        Color btnCancelColor = Colors.blue,
        Duration? autoHide,
         Color dialogBackgroundColor =  const Color.fromARGB(255, 112, 187, 241),
        bool dismissOnTouchOutside = true}) =>
    AwesomeDialog(
      dialogBackgroundColor: dialogBackgroundColor,
        dismissOnTouchOutside: dismissOnTouchOutside,
        autoHide: autoHide,
        buttonsTextStyle: Theme.of(context).textTheme.bodyText1,
        btnOkColor: defautlColor,
        btnCancelColor: defautlColor,
        btnCancelText: btnCancelText,
        btnOkText: btnOkText,
        borderSide: BorderSide(
          color: defautlColor,
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

///////////////////////////// lost internet connection /////////////////////////////////////////////
Widget lostINternet() => Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.wifi_off, color: Colors.red),
          Text("لقد فقدت الاتصال بالانترنت",
              style: TextStyle(fontFamily: "Amiri", color: Colors.black))
        ],
      ),
    );
/////////////////////////////END lost internet connection /////////////////////////////////////////////

//////////////////////////////////////// flat button /////////////////////////////////////////////////
Widget defaultButton({
  required void Function()? onPressed,
  required Widget child,
}) {
  return FlatButton(
    onPressed: onPressed,
    child: child,
  );
}
//////////////////////////////////////// flat button /////////////////////////////////////////////////

////////////////////////////////////////// fitted box ///////////////////////////////////////////////
Widget fitted(Widget child, {BoxFit fit = BoxFit.contain}) => FittedBox(
      child: child,
      fit: fit,
    );
//////////////////////////////////////////end  fitted box ///////////////////////////////////////////////

/////////////////////////////////////////card with clipRRect////////////////////////////////
Widget card(
        {required double valueOfBorder,
        required Widget widget,
        double elevation = 4,
        Color shadowColor = Colors.black,
        Color color = const Color.fromARGB(0, 255, 255, 255)}) =>
    Card(
      color: color,
      shadowColor: shadowColor,
      elevation: elevation,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(valueOfBorder)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(valueOfBorder),
        child: widget,
      ),
    );
/////////////////////////////////////////card with clipRRect////////////////////////////////

/////////////////////////////////////// image for network///////////////////////////////////
Widget imageNetwork(src) => Image.network(src,
    errorBuilder: (context, object, stack) => const Icon(Icons.error),
    loadingBuilder: (context, widget, loding) {
      if (loding == null) {
        return card(valueOfBorder: 25, widget: widget, elevation: 15);
      }
      return indicator();
    });

/////////////////////////////////////// image for network///////////////////////////////////

/////////////////////////////////// prossIndicator///////////////////////////////////
Widget indicator() => Center(
      child: Padding(
        padding: EdgeInsets.all(4.0),
        child: CircularProgressIndicator(
          color: defautlColor,
        ),
      ),
    );
/////////////////////////////////// prossIndicator///////////////////////////////////

/////////////////////////// NestedScrollView//////////////////////////
Widget nested({required String textAppBar, required Widget body}) =>
    NestedScrollView(
        physics: const BouncingScrollPhysics(),
        headerSliverBuilder: (BuildContext context, bool b) => [
              SliverAppBar(
                centerTitle: true,
                title: Text(
                  textAppBar,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              )
            ],
        body: body);
////////////////////////// end NestedScrollView ///////////////////////

/////////////////////////////// ConstrainedBox/////////////////////////////
Widget constrainedBox({
  required Widget child,
  double maxHeight = 0.0,
  double maxWidth = 0.0,
  double minHeight = 0.0,
  double minWidth = 0.0,
}) =>
    ConstrainedBox(

      constraints: BoxConstraints(
        maxHeight: maxHeight,
        maxWidth: maxWidth,
        minHeight: minHeight,
        minWidth: minWidth,
        
      ),
      child: child,
    );
/////////////////////////////// end  ConstrainedBox/////////////////////////////

// for Snakbar
// ignore: non_constant_identifier_names
ShowSnackBar(context, text) {
  final snackBar = SnackBar(
    backgroundColor: defautlColor,
    content: SizedBox(
      height: height(context) * 0.14,
      child: fitted(textN(context, 'تم النسخ')),
    ),
    duration: const Duration(milliseconds: 1000),
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25), topRight: Radius.circular(25))),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

// for text with style body 1

Widget text(context, text, {textAlign = TextAlign.start}) => AutoSizeText(text,
minFontSize: 20,
    textAlign: textAlign, style:TextStyle(
      color: Colors.black,
      fontFamily: 'cairo'
    ));
// for text with style body 1
Widget textW(context, text, {textAlign = TextAlign.start}) => Text(text,
    textAlign: textAlign,
    style:
        Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white));
Widget textA(context, text, {textAlign = TextAlign.start}) => Text(
      text,
      overflow: TextOverflow.fade,
      textAlign: textAlign,
      style: TextStyle(
        color: Color.fromARGB(255, 227, 203, 163),
        fontFamily: 'aref',
      ),
    );
Widget textAB(context, text, {textAlign = TextAlign.start}) => Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        color: defautlColor,
        fontFamily: 'aref',
      ),
    );

Widget textN(context, text, {textAlign = TextAlign.start}) => Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        color: defautlColor2,
        fontFamily: 'noto',
      ),
    );

Widget textNDef1(context, text, {textAlign = TextAlign.start}) => Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        color: defautlColor2,
        fontFamily: 'noto',
      ),
    );
Widget textShowT(
  context,
  text, {
  textAlign = TextAlign.start,
  double size = 15.0,
}) =>
    Text(
      text,
      textAlign: textAlign,
      style: TextStyle(color: defautlColor2, fontFamily: 'noto', fontSize: size),
    );
Widget textShowTI(
  context,
  text, {
  textAlign = TextAlign.start,
  double size = 15.0,
}) =>
    Text(
      text,
      maxLines: 10,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign,
      style: TextStyle(color: Colors.black, fontFamily: 'noto', fontSize: size),
    );
Widget textNW(
  context,
  text, {
  textAlign = TextAlign.start,
  double size = 15.0,
}) =>
    Text(
      text,
      textAlign: textAlign,
      style:
          TextStyle(color: defautlColor2, fontFamily: 'noto', fontSize: size),
    );

////////////////////////////////////////////// bootm shhet select image ///////////////////////////////////////////////
Future showBottomFuncation(
  context, {
  void Function()? funcationOfgallery,
  void Function()? funcationOfcamera,
}) =>
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        )),
        context: context,
        builder: (c) {
          return Container(
            height: 200,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "الرجاء تحديد من اين تريد استرياد الصورة",
                  style: TextStyle(fontFamily: "Amiri", color: defautlColor),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    RaisedButton(
                      color: defautlColor,
                      onPressed: funcationOfgallery,
                      child: Column(
                        children: const [
                          Text(
                            "المعرض",
                            style: TextStyle(
                              fontFamily: "Amiri",
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.photo,
                          )
                        ],
                      ),
                    ),
                    RaisedButton(
                      color: defautlColor,
                      onPressed: funcationOfcamera,
                      child: Column(
                        children: const [
                          Text(
                            "الكاميره",
                            style: TextStyle(
                              fontFamily: "Amiri",
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.camera,
                          )
                        ],
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                )
              ],
            ),
          );
        });
 
 
/////// /////////////////////////////////////// END bootm shhet select image ///////////////////////////////////////////////
