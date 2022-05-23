import 'package:flutter/material.dart';
import 'package:flutter_e_learning/theme/colors.dart';

class CustomCourseCardExpand extends StatefulWidget {
  final String thumbnail;
  final String videoAmount;
  final String title;
  final String userProfile;
  final String userName;
  final String price;

  const CustomCourseCardExpand(
      {Key? key,
      required this.thumbnail,
      required this.videoAmount,
      required this.title,
      required this.userProfile,
      required this.userName,
      required this.price})
      : super(key: key);

  @override
  State<CustomCourseCardExpand> createState() => _CustomCourseCardExpandState();
}

class _CustomCourseCardExpandState extends State<CustomCourseCardExpand> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .6,
      alignment: Alignment.topCenter,
      padding: const EdgeInsets.all(7.0),
      decoration: BoxDecoration(
          color: textWhite,
          borderRadius: BorderRadius.circular(17.0),
          boxShadow: [
            BoxShadow(
                color: textBlack.withOpacity(0.1),
                blurRadius: 10.0,
                offset: const Offset(0, 5))
          ]),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Container(
                height: size.width * .6,
                width: size.width * .6,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.network(
                    widget.thumbnail,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                  bottom: 7.0,
                  left: 7.0,
                  child: Container(
                    width: 90.0,
                    height: 30.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: textWhite.withOpacity(0.75),
                        borderRadius: BorderRadius.circular(100.0)),
                    child: Text(
                      '${widget.videoAmount}videos',
                      style: const TextStyle(
                          color: secondary,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w700),
                    ),
                  ))
            ],
          ),
          const SizedBox(
            height: 15.0,
          ),
          Container(
            padding: const EdgeInsets.only(left: 7.0, right: 7.0),
            child: Text(
              widget.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: secondary,
                fontSize: 17.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 7.0,
              right: 7.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 30.0,
                  width: 30.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: Image.network(
                      widget.userProfile,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Flexible(
                    child: Container(
                  width: size.width,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    widget.userName,
                    style: const TextStyle(color: secondary, fontSize: 13.0),
                  ),
                )
                ),
                Text(
                  '\$${widget.price}',
                  style: const TextStyle(
                      color: primary, fontSize: 15.0, fontWeight: FontWeight.w700
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5,),
        ],
      ),
    );
  }
}
