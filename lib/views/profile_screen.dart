import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram_clone_ui/theme/colors.dart';
import 'package:instagram_clone_ui/util/stories_json.dart';
import 'package:instagram_clone_ui/widgets/story_item.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            //Top Container for Profile pics, Posts, Followers and Following
            Container(
              height: 360,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 10,
                    offset: Offset(0, 7), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 16, left: 3, right: 3),
                child: Column(
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Feather.plus_circle,
                            color: black,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: picsBorderColors)),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: black, width: 0.3),
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: CachedNetworkImageProvider(
                                          'https://images.unsplash.com/photo-1550639524-a6f58345a2ca?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTd8fGZhY2V8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                                        ),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Feather.message_circle,
                            color: black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        "Ada Lopez  ",
                        style: TextStyle(
                          color: black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Center(
                      child: Text(
                        "UI / UX design and photography, Mexico",
                        style: TextStyle(
                          color: greyish,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Center(
                      child: Text(
                        "#LifeStyle #Design #Photography #Urban #Art",
                        style: TextStyle(
                          color: blue,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 30,
                        right: 30,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "735",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "Post",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: greyish,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "876",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "Followers",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: greyish,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "568",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "Following",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: greyish,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Center(
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(50),
                              gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: picsBorderColors)),
                          child: FlatButton(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 50, right: 50),
                              child: Text(
                                "Post",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              child: _storyGenerator(),
            ),
            _tabSection(context)
          ],
        ),
      )),
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
                Container(
                  height: 80,
                  child: Stack(
                    children: [
                      Container(
                        width: 65,
                        height: 65,
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
                          bottom: 5,
                          right: 20,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: white,
                                ),
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
                /*SizedBox(
                  height: 2,
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
                ),*/
              ],
            ),
          ),
          //Stories
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

  //Widget for displaying the Post, Videos and IGTV tabs
  Widget _tabSection(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 5,
              left: 15,
              right: 15,
            ),
            child: Container(
              child: TabBar(tabs: [
                Tab(
                  child: Text(
                    "Post",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    "Videos",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    "IGTV",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18, right: 18, top: 5),
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: TabBarView(
                children: [
                  Center(
                    child: StaggeredGridView.countBuilder(
                      crossAxisCount: 4,
                      itemCount: 15,
                      itemBuilder: (BuildContext context, int index) =>
                          Container(
                        height: 120.0,
                        width: 120.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://picsum.photos/500/500?random=$index'),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.rectangle,
                        ),
                      ),
                      staggeredTileBuilder: (int index) =>
                          new StaggeredTile.count(2, index.isEven ? 3 : 2),
                      mainAxisSpacing: 4.0,
                      crossAxisSpacing: 4.0,
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(40),
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(width: 2, color: black)),
                            child: Icon(
                              Feather.tv,
                              size: 30,
                            ),
                          ),
                          Text(
                            "Upload a Video",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Videos must be between 1 and 60 minutes long",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            color: instaBtnColor,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 40),
                              child: Text(
                                "Upload",
                                textAlign: TextAlign.center,
                                textDirection: TextDirection.ltr,
                                softWrap: true,
                                style: TextStyle(color: white, fontSize: 14),
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Text("IGTV Body"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
