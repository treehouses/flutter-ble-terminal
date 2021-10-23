import 'package:flutter/material.dart';
import 'package:treehousesble/feature/onboard/ui/widget/onboard_bluetooth_widget.dart';
import 'package:treehousesble/feature/onboard/ui/widget/onboard_download_widget.dart';
import '../widget/onboard_widget.dart';

class OnboardPage extends StatelessWidget {
   PageController _pageController = PageController();
  int currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    return PageView(
            controller: _pageController,
            children: <Widget>[
              Container(
                child: OnboardWidget((){
                  _pageController.nextPage(duration: Duration(seconds: 1), curve: Curves.ease);
                },),
              ),
              Container(
                child: OnboardDownloadWidget(),
              ),
              Container(
                child: OnboardBluetoothWidget(),
              )
            ],
    );
  }
}
