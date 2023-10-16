import 'package:flutter/material.dart';
import '../view/home_screen/home_screen.dart';
class MyState extends ChangeNotifier {
  final PageController _pageController = PageController();

  PageController get pageController => _pageController;
  final List<Widget> imageList = [
    HomeScreen(),
    Container(),
    Container(),
    Container(),
  ];
}
