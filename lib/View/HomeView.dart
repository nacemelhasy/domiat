import 'package:domiat/componets/allCompontes.dart';
import 'package:domiat/componets/defaultCS.dart';
import 'package:domiat/viewmodel/HomeViewModel.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => ViewHomeView();
}

class ViewHomeView extends State<HomeView> {
  HomeViewModel data = new HomeViewModel();
  bool isLoading = true;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: defautlColor,
          title: text(context, '${data.appBarText}   ${HomeViewModel.points}'),
          actions: [
            Row(
              children: [
                ElevatedButton.icon(
                    onPressed: () {
                      data.showDialog(context);
                    },
                    icon: Icon(Icons.add),
                    label: text(context, data.leadingAppBar))
              ],
            ),
            SizedBox(
              width: width(context) * 0.05,
            ),
          ],
        ),
        body: Stack(
          children: [
            WebView(
              initialUrl: data.urlPage,
              onPageFinished: (val) {
                setState(() {
                  isLoading = !isLoading;
                });
              },
            ),
            isLoading
                ? Center(
                    child: indicator(),
                  )
                : Container(),
            Positioned(
              bottom: 0,
              child: Container(
                color: defautlColor,
                height: MediaQuery.of(context).size.height * 0.18,
                width: MediaQuery.of(context).size.width,
                child: Image.asset('images/image.jpg'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
