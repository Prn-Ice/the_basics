import 'package:flutter/material.dart';
import 'package:the_basics/ui/widgets/navigation_bar/nav_bar_tem.dart';
import 'package:the_basics/ui/widgets/navigation_bar/navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavBarItem(title: 'Episodes'),
              SizedBox(width: 60),
              NavBarItem(title: 'About'),
            ],
          ),
        ],
      ),
    );
  }
}

