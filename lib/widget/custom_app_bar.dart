import 'package:flutter/material.dart';
import 'package:flutter_e_learning/theme/colors.dart';
import 'package:flutter_e_learning/utils/contant.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final bool action;
  final String actionIcon;
  final Color iconColor;
  final Color backgroundColor;
  final Brightness? brightness;

  const CustomAppBar(
      {Key? key,
      required this.title,
      required this.action,
      required this.actionIcon,
      required this.iconColor,
      required this.backgroundColor,
      this.brightness})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      brightness: brightness,
      backgroundColor: backgroundColor,
      elevation: 0.0,
      automaticallyImplyLeading: false,
      primary: false,
      excludeHeaderSemantics: true,
      flexibleSpace: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                      color: primary.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                          color: primary.withOpacity(0.5),
                          spreadRadius: 0.0,
                          blurRadius: 6.0,
                          offset: const Offset(0, 2),
                        ),
                      ]),
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset(
                      '${assetImg}arrow_left_icon.svg',
                      color: textWhite,
                    ),
                  ),
                ),

                const Spacer(),
                Text(title, style: const TextStyle(fontSize: 17, color: secondary),),
                const Spacer(),
                (action)
                ? SizedBox(
                  width: 40.0,
                  child: SvgPicture.asset(assetImg + actionIcon, color: iconColor, height: 15.0,),
                ) : const SizedBox(
                  width: 40.0,
                  height: 40.0,
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
