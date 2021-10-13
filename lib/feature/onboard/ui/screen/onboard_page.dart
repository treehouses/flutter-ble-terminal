import 'package:flutter/material.dart';
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
                child: OnboardWidget(),
              )
            ],
    );
  }
}
