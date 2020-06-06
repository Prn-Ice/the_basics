import 'package:flutter/material.dart';
import 'package:the_basics/ui/widgets/call_to_action/call_to_action.dart';
import 'package:the_basics/ui/widgets/course_details/course_details.dart';

class HomeContentDeskTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CourseDetails(),
        Expanded(
          child: Center(
            child: CallToAction('Join Course'),
          ),
        ),
      ],
    );
  }
}
