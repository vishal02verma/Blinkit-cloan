import 'package:blinkit_cloan/repository/screens/cart/cartScreen.dart';
import 'package:blinkit_cloan/repository/screens/category/category.dart';
import 'package:blinkit_cloan/repository/screens/home/homeScreen.dart';
import 'package:blinkit_cloan/repository/screens/printScreen/printScreen.dart';
import 'package:blinkit_cloan/repository/widgets/uihelper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Botomnavscreen extends StatefulWidget {
  const Botomnavscreen({super.key});

  @override
  State<Botomnavscreen> createState() => _BotomnavscreenState();
}

class _BotomnavscreenState extends State<Botomnavscreen> {
  int currentIndex = 0;
  List<Widget> pages = [
    Homescreen(),
    Cartscreen(),
    CategoryScreen(),
    PrintScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: pages),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(img: "home 1.png"),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(img: "shopping-bag 1.png"),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(img: "category 1.png"),
            label: "Category",
          ),
          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(img: "printer 1.png"),
            label: "print",
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
