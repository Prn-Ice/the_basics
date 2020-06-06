import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:the_basics/ui/widgets/navigation_bar/navigation_bar_mobile.dart';
import 'package:the_basics/ui/widgets/navigation_bar/navigation_bar_tablet_desktop.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_) => NavigationBarMobile(),
      tablet: (_) => NavigationBarTabletDesktop(),
    );
  }
}
