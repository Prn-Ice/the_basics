import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:the_basics/ui/views/home/home_content_desktop.dart';
import 'package:the_basics/ui/views/home/home_content_mobile.dart';
import 'package:the_basics/ui/widgets/centered_view.dart';
import 'package:the_basics/ui/widgets/navigation_bar/navigation_bar.dart';
import 'package:the_basics/ui/widgets/navigation_drawer/navigation_drawer.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (_, sizingInformation) => Scaffold(
        drawer: sizingInformation.isMobile ? NavigationDrawer() : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: [
              NavigationBar(),
              Expanded(
                child: ScreenTypeLayout.builder(
                  mobile: (_) => HomeContentMobile(),
                  desktop: (_) => HomeContentDeskTop(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
