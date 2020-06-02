import 'package:flutter/material.dart';
import 'package:the_basics/ui/widgets/call_to_action.dart';
import 'package:the_basics/ui/widgets/centered_view.dart';
import 'package:the_basics/ui/widgets/course_details.dart';
import 'package:the_basics/ui/widgets/navigation_bar.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: [
            NavigationBar(),
            Expanded(
              child: Row(
                children: [
                  CourseDetails(),
                  Expanded(
                  child: Center(
                    child: CallToAction('Join Course'),
                  ),
                ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
