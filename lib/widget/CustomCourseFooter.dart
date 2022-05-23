import 'package:flutter/material.dart';
import 'package:flutter_e_learning/theme/colors.dart';
import 'package:flutter_e_learning/theme/padding.dart';
import 'package:flutter_e_learning/widget/custom_button_box.dart';

class CustomCourseFooter extends StatelessWidget {
  final String coursePrice;
  final bool enrolled;

  const CustomCourseFooter({Key? key, required this.coursePrice, required this.enrolled}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return (enrolled)
          ? Container(
            width: size.width,
        height: 100.0,
        padding: const EdgeInsets.all(appPadding),
      decoration: const BoxDecoration(
        color: textWhite,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0)
        )
      ),
      child: CustomeButtonBox(title: 'Continue Class',),
    ) : Container(
      width: size.width,
      height: 100.0,
      padding: const EdgeInsets.only(
        left: appPadding,
        right: appPadding,
        top: appPadding
      ),
      decoration: const BoxDecoration(
        color: textWhite,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                const Text('Course Price',
                style: TextStyle(fontSize: 12.0, color: grey),
                ),
                const SizedBox(height: 5,),
                Text(coursePrice,
                style: const TextStyle(
                  fontSize: 20.0,
                  color: primary,
                  fontWeight: FontWeight.w700,
                ),)
              ],
            ),
          ),
          const SizedBox(width: miniSpacer + 5,),
          const Flexible(child: CustomeButtonBox(title: 'Enroll Now',))
        ],
      ),
    );
  }
}
