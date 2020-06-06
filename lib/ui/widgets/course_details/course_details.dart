import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CourseDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (_, sizingInformation) {
        TextAlign textAlign = getValueForScreenType<TextAlign>(
          context: _,
          desktop: TextAlign.left,
          mobile: TextAlign.center,
        );

        double titleSize =
            getValueForScreenType<double>(context: _, mobile: 50, tablet: 80);

        double descriptionSize =
            getValueForScreenType<double>(context: _, mobile: 16, tablet: 21);

        return Container(
          width: 600,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'FLUTTER WEB.\nTHE BASICS',
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: titleSize,
                    height: 0.9),
                textAlign: textAlign,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'In this course we will go over the basics of using Flutter Web for website development. Topics will include Responsive Layout, Deploying, Font Changes, Hover Functionality, Modals and more.',
                style: TextStyle(fontSize: descriptionSize, height: 1.7),
                textAlign: textAlign,
              ),
            ],
          ),
        );
      },
    );
  }
}
