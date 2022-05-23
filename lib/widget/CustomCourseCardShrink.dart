import 'package:flutter/material.dart';
import 'package:flutter_e_learning/theme/colors.dart';

class CustomCourseCardShrink extends StatefulWidget {
  final String thumbNail;
  final String title;
  final String userName;
  final String price;

  const CustomCourseCardShrink(
      {Key? key,
      required this.thumbNail,
      required this.title,
      required this.userName,
      required this.price})
      : super(key: key);

  @override
  State<CustomCourseCardShrink> createState() => _CustomCourseCardShrinkState();
}

class _CustomCourseCardShrinkState extends State<CustomCourseCardShrink> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.width * .2,
      padding: const EdgeInsets.all(15.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: textWhite,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        children: [
          Container(
            height: size.width * .125,
            width: size.width * .125,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.network(
                widget.thumbNail,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 15.0,
          ),
          Flexible(child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.title,maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 14.0,
                color: secondary,
                fontWeight: FontWeight.w700,
              ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Text('Instructor: ${widget.userName}',
                  style: const TextStyle(
                    fontSize: 12.0,
                    color: grey,
                  ),
                   ),
                  Text('\$ ${widget.price}',
                  style: const TextStyle(
                    fontSize: 14.0,
                    color: primary,
                    fontWeight: FontWeight.w700,
                  ),)
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
