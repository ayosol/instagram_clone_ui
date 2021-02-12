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
  final String likeNo;
  final bool isLike;
  final String feedTime;
  final String caption;
  final String comments;

  const FeedItem({
    Key key,
    this.id,
    this.username,
    this.profileImg,
    this.imageUrl,
    this.likes,
    this.likeNo,
    this.isLike,
    this.caption,
    this.comments,
    this.feedTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 20,
      ),
      child: Container(
        decoration: BoxDecoration(
            color: white,
            border: Border.all(color: Colors.transparent),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Contains Header for Image (profile, name and feed time)
              Padding(
                padding:
                    EdgeInsets.only(left: 8, right: 15, bottom: 15, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(colors: picsBorderColors),
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
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              username,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              feedTime,
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Icon(FontAwesome.ellipsis_v, size: 15),
                  ],
                ),
              ),
              //Feed Image, like icon, number of likes and comment icon
              Stack(
                children: [
                  Center(
                    child: Container(
                      height: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        image: DecorationImage(
                          image: CachedNetworkImageProvider(imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 350, left: 5, right: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 6.5,
                                    top: 5.5,
                                  ),
                                  child: Container(
                                    width: 35,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors
                                          .white /*isLike ? Colors.white : Colors.red*/,
                                    ),
                                  ),
                                ),
                                IconButton(
                                  icon: isLike
                                      ? SvgPicture.asset(
                                          "assets/images/heart_is_like.svg",
                                          width: 20,
                                          height: 20,
                                        )
                                      : SvgPicture.asset(
                                          "assets/images/heart_inactive.svg",
                                          width: 20,
                                          height: 20,
                                        ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: grey,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, right: 10, top: 1.5, bottom: 1.5),
                                child: Center(
                                  child: Text(
                                    likeNo,
                                    style: TextStyle(
                                      color: black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 6.5,
                                top: 7,
                              ),
                              child: Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors
                                      .white /*isLike ? Colors.white : Colors.red*/,
                                ),
                              ),
                            ),
                            IconButton(
                              icon: Icon(
                                Feather.message_circle,
                                size: 20,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // Likes, Feed Caption and Comments
              Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  left: 12,
                  bottom: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      likes,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(caption),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      comments,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          "Mike_Dane",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "This is truly inspiring",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
