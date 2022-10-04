import 'package:domiat/componets/allCompontes.dart';
import 'package:domiat/componets/defaultCS.dart';
import 'package:domiat/viewmodel/OnBorViewModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class OnBordingView extends StatelessWidget {
OnBordingViewModel data = new OnBordingViewModel();
   OnBordingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: defautlColor,
      body: Column(
        children: [
          SizedBox(height: height(context)*0.2,
          child: Padding(
            padding: const EdgeInsets.all(60.0),
            child: fitted(text(context, data.nameApp)),
          ),
          ),
          SizedBox(height: height(context)*0.2,
          width: width(context)*0.8,
          child: fitted(text(context, data.title))
          ),
          SizedBox(height: height(context)*0.2,width: width(context), child: text(context,data.description,textAlign: TextAlign.center)),
      SizedBox(
        height: height(context)*0.3,
        width: width(context),
        child: fitted(Image.asset('images/onBor.jpg'),),
      )  ,

      SizedBox(height: height(context)*0.1,
      width: width(context)*0.8,
      child: fitted(ElevatedButton.icon(
        icon: Icon(Icons.arrow_back),
        label: text(context, 'هيا بنا'),
        onPressed: (){
          data.rout(context);
        },
      ),)
      )
        ],
      ),
    );
  }
}