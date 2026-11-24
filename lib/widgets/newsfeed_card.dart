import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bituon_mobprog/constants.dart';
import 'package:bituon_mobprog/widgets/custom_text.dart';
import 'package:bituon_mobprog/widgets/post_action_button.dart';
import 'package:bituon_mobprog/widgets/post_image.dart';

class NewsFeedCard extends StatelessWidget {
  final String userName;
  final String postContent;
  final String date;
  final int? numOfLikes;
  final bool? hasImage;

  const NewsFeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    required this.date,
    this.numOfLikes,
    this.hasImage,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: lightColor,
      margin: EdgeInsets.all(ScreenUtil().setWidth(12)),
      elevation: 3,
      child: Padding(
        padding: EdgeInsets.all(ScreenUtil().setWidth(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User Header
            Row(
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(
                    'assets/images/profile.jpg',
                  ),
                ),

                SizedBox(width: ScreenUtil().setWidth(10)),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: userName,
                        fontSize: ScreenUtil().setSp(15),
                        color: primaryColor,
                        fontWeight: FontWeight.bold,
                      ),

                      Row(
                        children: [
                          CustomText(
                            text: date,
                            fontSize: ScreenUtil().setSp(12),
                            color: mutedColor,
                          ),

                          SizedBox(
                            width: ScreenUtil().setWidth(4),
                          ),

                          Icon(
                            Icons.public,
                            color: mutedColor,
                            size: ScreenUtil().setSp(14),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: ScreenUtil().setHeight(10)),

            // Post Content
            CustomText(
              text: postContent,
              fontSize: ScreenUtil().setSp(13),
              color: secondaryColor,
            ),

            SizedBox(height: ScreenUtil().setHeight(10)),

            // Optional Post Image
            if (hasImage == true)
              const PostImage(
                imagePath: 'assets/images/iron_man.jpg',
              ),

            SizedBox(height: ScreenUtil().setHeight(10)),

            // Likes / Comments / Shares
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.thumb_up,
                      color: accentColor,
                      size: 18,
                    ),

                    const SizedBox(width: 5),

                    Text(
                      '${numOfLikes ?? 0}',
                      style: const TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                const Text(
                  '42 Comments · 5 Shares',
                  style: TextStyle(
                    color: mutedColor,
                  ),
                ),
              ],
            ),

            const Divider(),

            // Action Buttons
            Row(
              children: [
                PostActionButton(
                  icon: Icons.thumb_up_alt_outlined,
                  text: 'Like',
                  onPressed: () {},
                ),

                PostActionButton(
                  icon: Icons.comment_outlined,
                  text: 'Comment',
                  onPressed: () {},
                ),

                PostActionButton(
                  icon: Icons.share_outlined,
                  text: 'Share',
                  onPressed: () {},
                ),
              ],
            ),

            const Divider(),

            // Comment Box
            Row(
              children: [
                const CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage(
                    'assets/images/profile.jpg',
                  ),
                ),

                SizedBox(width: ScreenUtil().setWidth(8)),

                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(12),
                      vertical: ScreenUtil().setHeight(8),
                    ),
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const CustomText(
                      text: 'Write a comment...',
                      fontSize: 11,
                      color: mutedColor,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: ScreenUtil().setHeight(10)),

            // Sample Comment
            CustomText(
              text: 'Great post!',
              fontSize: ScreenUtil().setSp(12),
              color: primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}