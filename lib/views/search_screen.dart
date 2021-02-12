import 'package:flutter/material.dart';
import 'package:instagram_clone_ui/theme/colors.dart';
import 'package:instagram_clone_ui/util/search_json.dart';
import 'package:instagram_clone_ui/widgets/search_category_item.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return getBody();
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 10,
              right: 15,
              left: 15,
            ),
            child: Center(
              child: Container(
                width: size.width - 30,
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: textFieldBackground),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        color: white.withOpacity(0.3),
                      )),
                  style: TextStyle(color: white.withOpacity(0.3)),
                  cursorColor: white.withOpacity(0.3),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
                children: List.generate(searchCategories.length, (index) {
              return CategoryStoryItem(
                name: searchCategories[index],
              );
            })),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Wrap(
          spacing: 1,
          runSpacing: 1,
          children: List.generate(searchImages.length, (index) {
            return Container(
              width: (size.width - 3) / 3,
              height: (size.width - 3) / 3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(searchImages[index]),
                      fit: BoxFit.cover)),
            );
          }),
        )
      ],
    ));
  }
}
