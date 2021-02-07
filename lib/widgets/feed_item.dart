import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_clone_ui/theme/colors.dart';

class FeedItem extends StatelessWidget {
  final int id;
  final String username;
  final String profileImg;
  final String imageUrl;
  final String likes;
  final bool isLike;
  final String caption;
  final String comments;
  final String dateTime;

  const FeedItem({
    Key key,
    this.id,
    this.username,
    this.profileImg,
    this.imageUrl,
    this.likes,
    this.isLike,
    this.caption,
    this.comments,
    this.dateTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: appBgColor.withOpacity(0.3)),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20, right: 15, bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(colors: storyBorderColor),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(1.5),
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 1,
                                  color: white,
                                ),
                                image: DecorationImage(
                                  image: CachedNetworkImageProvider(profileImg),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          username,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Icon(FontAwesome.ellipsis_v, size: 15),
                  ],
                ),
              ),
              Container(
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: isLike
                          ? SvgPicture.asset(
                              "assets/images/heart_red.svg",
                              width: 25,
                              height: 25,
                            )
                          : SvgPicture.asset(
                              "assets/images/heart.svg",
                              width: 25,
                              height: 25,
                            ),
                      onPressed: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
