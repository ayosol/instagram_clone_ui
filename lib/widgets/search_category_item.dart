import 'package:flutter/material.dart';
import 'package:instagram_clone_ui/theme/colors.dart';

class CategoryStoryItem extends StatelessWidget {
  final String name;

  const CategoryStoryItem({
    Key key,
    this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: greyish,
            border: Border.all(color: white.withOpacity(0.2))),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
          child: Text(
            name,
            style: TextStyle(
                color: white, fontWeight: FontWeight.w500, fontSize: 15),
          ),
        ),
      ),
    );
  }
}
