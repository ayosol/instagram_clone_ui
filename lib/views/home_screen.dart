import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:instagram_clone_ui/theme/colors.dart';
import 'package:instagram_clone_ui/util/stories_json.dart';
import 'package:instagram_clone_ui/widgets/story_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    //var size = MediaQuery.of(context).size;
    return Scaffold(
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
          color: Colors.black,
          fontFamily: 'Billabong',
          fontSize: 30,
        ),
      ),
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          Feather.plus_circle,
          color: Colors.black,
        ),
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(
            Feather.message_circle,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  //HomePage Main Body
  Widget homeScreenBody() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: _storyGenerator(),
    );
  }

  Widget _storyGenerator() {
    return Row(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(right: 20, left: 15, bottom: 10, top: 5),
          child: Column(
            children: [
              //User Profile for the Stories
              Container(
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
                        right: 0,
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: white),
                          child: Icon(
                            Icons.add_circle,
                            color: Colors.blueGrey,
                            size: 20,
                          ),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 6,
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
              )
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
    );
  }
}
