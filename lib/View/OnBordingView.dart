import 'package:domiat/componets/allCompontes.dart';
import 'package:domiat/componets/defaultCS.dart';
import 'package:domiat/viewmodel/OnBorViewModel.dart';
import 'package:flutter/material.dart';

import 'package:mobile_number/mobile_number.dart';

class OnBordingView extends StatefulWidget {

   OnBordingView({Key? key}) : super(key: key);

  @override
  State<OnBordingView> createState() => _OnBordingViewState();
}

class _OnBordingViewState extends State<OnBordingView> {
OnBordingViewModel data = new OnBordingViewModel();// for access at data from viewmodel onboarding

@override
  void initState() {
    // for check the have permssion or not 
      MobileNumber.listenPhonePermission((isPermissionGranted) {
      if (isPermissionGranted) {
        data.initMobileNumberState();
      } else {
      }
    });
// if the have permission will listen from this function not listen above function
          data.initMobileNumberState();
    


    super.initState();
  }




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
          var videoName;
         
        },
      ),)
      )
        ],
      ),
    );
  }
}