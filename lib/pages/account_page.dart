import 'package:flutter/material.dart';
import 'package:flutter_e_learning/datas/account_menu_json.dart';
import 'package:flutter_e_learning/theme/colors.dart';
import 'package:flutter_e_learning/theme/padding.dart';
import 'package:flutter_e_learning/widget/custom_button_box.dart';
import 'package:flutter_e_learning/widget/custom_heading.dart';
import 'package:flutter_e_learning/widget/custom_place_holder.dart';
import 'package:flutter_e_learning/widget/custom_title.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
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
    List items = AccountMenuJson[2]['categories'];
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
                title: "Account", subTitle: "Student", color: secondary),
            const SizedBox(
              height: spacer,
            ),
            const CustomTitle(
              title: "Support",
              extend: false,
            ),
            const SizedBox(
              height: spacer,
            ),
            Column(
              children: List.generate(items.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: CunstomPlaceHolder(title: items[index]['title']),
                );
              }),
            ),
            const SizedBox(
              height: spacer,
            ),
            const CustomeButtonBox(title: "Sign In")
          ],
        ),
      ),
    );
  }
}
