import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:instagram_clone_ui/theme/colors.dart';
import 'package:instagram_clone_ui/util/feed_json.dart';
import 'package:instagram_clone_ui/util/stories_json.dart';
import 'package:instagram_clone_ui/views/root_screen.dart';
import 'package:instagram_clone_ui/widgets/feed_item.dart';
import 'package:instagram_clone_ui/widgets/story_item.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    //var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: appBgColor,
      appBar: myAppBar(),
      body: homeScreenBody(),
    );
  }

  //AppBar for Homepage
  Widget myAppBar() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: appBarColor,
      centerTitle: true,
      title: Text(
        "Instagram",
        style: TextStyle(
          color: black,
          fontFamily: 'Billabong',
          fontSize: 30,
        ),
      ),
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          Feather.plus_circle,
          color: black,
        ),
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(
            Feather.message_circle,
            color: black,
          ),
        ),
      ],
    );
  }

  //HomePage Main Body
  Widget homeScreenBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _storyGenerator(),
          Divider(
            color: Colors.transparent,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Explorer",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Divider(color: Colors.transparent),
          _feedGenerator(),
        ],
      ),
    );
  }

  // Widget for placing stories on the homepage top
  Widget _storyGenerator() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(right: 20, left: 15, bottom: 10, top: 5),
            child: Column(
              children: [
                //User Profile for the Stories
                InkWell(
                  child: Container(
                    height: 70,
                    child: Stack(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: CachedNetworkImageProvider(
                                  'https://images.unsplash.com/photo-1550639524-a6f58345a2ca?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTd8fGZhY2V8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                            ),
                          ),
                        ),
                        Positioned(
                            bottom: 0,
                            right: 20,
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: white),
                                  shape: BoxShape.circle,
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: picsBorderColors)),
                              width: 20,
                              height: 20,
                              child: Icon(
                                Icons.add,
                                color: white,
                                size: 15,
                              ),
                            )),
                      ],
                    ),
                  ),
                  onTap: () {
                    print("Your Story Container was clicked");
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => RootScreen()));
                  },
                ),
                SizedBox(
                  height: 3,
                ),
                SizedBox(
                  width: 70,
                  child: Center(
                    child: Text(
                      "Your Story",
                      //overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: List.generate(
              stories.length,
              (index) {
                return StoryWidget(
                  imageUrl: stories[index]['imageUrl'],
                  username: stories[index]['username'],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  // Widget for generating feed or posts
  Widget _feedGenerator() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: List.generate(feed.length, (index) {
            return FeedItem(
              username: feed[index]['username'],
              profileImg: feed[index]['profileImg'],
              imageUrl: feed[index]['imageUrl'],
              likes: feed[index]['likes'],
              likeNo: feed[index]['likeNo'],
              isLike: feed[index]['isLike'],
              caption: feed[index]['caption'],
              comments: feed[index]['comments'],
              feedTime: feed[index]['feedTime'],
            );
          }),
        ),
      ),
    );
  }
}
