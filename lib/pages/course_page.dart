import 'package:flutter/material.dart';
import 'package:flutter_e_learning/datas/courses_json.dart';
import 'package:flutter_e_learning/theme/colors.dart';
import 'package:flutter_e_learning/theme/padding.dart';
import 'package:flutter_e_learning/widget/custom_heading.dart';
import 'package:flutter_e_learning/widget/custom_my_courses_card.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({Key? key}) : super(key: key);

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(appPadding),
        child: Column(
          children: [
            const SizedBox(
              height: spacer,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
               const CustomHeading(
                    title: "My Course",
                    subTitle: "Let's continue shall we?",
                    color: secondary),
                Text(
                  "${MyCoursesJson.length} Courses",
                  style: const TextStyle(fontSize: 15, color: secondary),
                )
              ],
            ),
            const SizedBox(
              height: spacer,
            ),
            Column(
              children: List.generate(MyCoursesJson.length, (index){
                return Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: CustomMyCoursesCard(
                    image: MyCoursesJson[index]['image'],
                    title: MyCoursesJson[index]['title'],
                    instructor: MyCoursesJson[index]['user_name'],
                    videoAmount: MyCoursesJson[index]['video'],
                    percentage: MyCoursesJson[index]['percentage'],
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
