import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bituon_mobprog/constants.dart';
import 'package:bituon_mobprog/widgets/custom_text.dart';

class NotificationWidget extends StatelessWidget {
  final String name;
  final String post;
  final String description;

  const NotificationWidget({
    super.key,
    required this.name,
    required this.post,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        ScreenUtil().setSp(15),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            Icons.person,
            size: 35,
            color: primaryColor,
          ),

          SizedBox(
            width: ScreenUtil().setWidth(10),
          ),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: name,
                  fontSize: ScreenUtil().setSp(14),
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                ),

                CustomText(
                  text: 'Posted: $post',
                  fontSize: ScreenUtil().setSp(13),
                  color: secondaryColor,
                ),

                CustomText(
                  text: description,
                  fontSize: ScreenUtil().setSp(12),
                  color: mutedColor,
                ),
              ],
            ),
          ),

          const Icon(
            Icons.more_horiz,
            color: mutedColor,
          ),
        ],
      ),
    );
  }
}