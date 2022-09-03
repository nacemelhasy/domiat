import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:domiat/componets/allCompontes.dart';
import 'package:domiat/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Home extends StatefulWidget{
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  void initState() {
    // TODO: implement initState

  Future.delayed(Duration(seconds: 1),
  ()=>{
    !pref.containsKey('vodaphone')?
      awesome(context,
    dialogType: DialogType.SUCCES,
   
    body: SizedBox(
      height: MediaQuery.of(context).size.height*0.4,
      child: Column(
        children: [
      SizedBox(
        height:  MediaQuery.of(context).size.height*0.05,
        width:  MediaQuery.of(context).size.width,
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text('ألف مبروووووووووووووووووووووووك'),
        ),
      ),


         SizedBox(
        height:  MediaQuery.of(context).size.height*0.05,
        width:  MediaQuery.of(context).size.width,
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text('لأنك أول مره تفتح التطبيق كسبت معانا كرت فودافون'),
        ),
      ),
        SizedBox(
        height:  MediaQuery.of(context).size.height*0.2,
        width:  MediaQuery.of(context).size.width,
        child: FittedBox(
          fit: BoxFit.contain,
          child: Image.network('https://1.bp.blogspot.com/-Yo_YUiF3vnI/XqNFQNQZbyI/AAAAAAAAPg0/iBbzhVRRoMcrbaCNxfJLKB95tc5ZDHdMwCLcBGAsYHQ/s1600/%25D8%25B4%25D8%25AD%25D9%2586-%25D9%2583%25D8%25A7%25D8%25B1%25D8%25AA-%25D9%2581%25D9%2588%25D8%25AF%25D8%25A7%25D9%2581%25D9%2588%25D9%2586.png')
        ),
      ),
          SizedBox(
        height:  MediaQuery.of(context).size.height*0.05,
        width:  MediaQuery.of(context).size.width,
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text('رقم الكرت : 11256005998860'),
        ),
      ),
     SizedBox(
        height:  MediaQuery.of(context).size.height*0.05,
        width:  MediaQuery.of(context).size.width,
        child: FittedBox(
          fit: BoxFit.contain,
          child: InkWell(
            onTap: (){
              pref.setBool('vodaphone', true);
              Navigator.pop(context);
            },
            child: Container(
              color: Colors.green,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('تم التعبئة'),
              ),
            ),
          )
        ),
      ),


        ],
      ),
    )
    )
  :null
  }
  
  );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
  return Stack(
    children: [
      WebView(
          initialUrl: 'https://www.saaih.com/%D9%85%D8%B5%D8%B1/%D8%AF%D9%85%D9%8A%D8%A7%D8%B7',
        ),

        Positioned(
          bottom: 0,
          child: Container(
            color: Colors.blue,
            height: MediaQuery.of(context).size.height*0.18,
            width: MediaQuery.of(context).size.width,
             child: Image.asset('images/image.jpg'),
          ),
        )
    ],
  );
  }
}