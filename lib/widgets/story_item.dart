import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone_ui/theme/colors.dart';

class StoryWidget extends StatelessWidget {
  final String imageUrl;
  final String username;
  const StoryWidget({
    Key key,
    this.imageUrl,
    this.username,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 20,
        bottom: 10,
      ),
      child: Column(
        children: <Widget>[
          Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: storyBorderColors)),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    border: Border.all(color: black, width: 0.3),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: CachedNetworkImageProvider(
                          imageUrl,
                        ),
                        fit: BoxFit.cover)),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          SizedBox(
            width: 70,
            child: Center(
              child: Text(
                username,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: black, fontSize: 12),
              ),
            ),
          )
        ],
      ),
    );
  }
}
