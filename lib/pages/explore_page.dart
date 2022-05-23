import 'package:flutter/material.dart';
import 'package:flutter_e_learning/datas/category_json.dart';
import 'package:flutter_e_learning/theme/colors.dart';
import 'package:flutter_e_learning/theme/padding.dart';
import 'package:flutter_e_learning/widget/custom_categories_button.dart';
import 'package:flutter_e_learning/widget/custom_heading.dart';
import 'package:flutter_e_learning/widget/custom_place_holder.dart';
import 'package:flutter_e_learning/widget/custom_search_field.dart';
import 'package:flutter_e_learning/widget/custom_title.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(appPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const SizedBox(
              height: spacer,
            ),
            const CustomHeading(
                title: "Explore",
                subTitle: "Seek for your preference",
                color: secondary),
            const SizedBox(
              height: spacer,
            ),
            const CustomSearchField(hintField: "Try Web Design"),
            const SizedBox(height: spacer,),
            const CustomTitle(title: "Top Searches", extend: false,),
            const SizedBox(height: smallSpacer,),
            Wrap(
              runSpacing: 10,
              spacing: 10,
              children: List.generate(CategoryJson.length, (index) {
                return  Container(
                  // alignment: Alignment.center,
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
                  decoration: BoxDecoration(
                      color: primary.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(100.0),
                      boxShadow: [
                        BoxShadow(
                          color: primary.withOpacity(0.5),
                          spreadRadius: 0.0,
                          blurRadius: 6.0,
                          offset: const Offset(0, 2),
                        )
                      ]
                  ),
                  child: Text(CategoryJson[index]['title'],
                    style: const TextStyle(
                      color: textWhite,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w700,
                    ),),
                );
              }),
            ),
            const SizedBox(height: spacer,),
            const CustomTitle(title: "Categories", extend: false,),
            const SizedBox(height: smallSpacer,),
            Column(
              children: List.generate(AllCategories.length, (index){
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: CunstomPlaceHolder(title: AllCategories[index]['title']),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
