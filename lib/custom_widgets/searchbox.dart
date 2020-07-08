import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const SearchBox({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 0),
        child: SearchBoxContainer(
          child: TextField(
            onChanged: onChanged,
            cursorColor: Colors.white,
            decoration: InputDecoration(
              hintText: 'Search Catalog',
              border: InputBorder.none,
              icon: Icon(Icons.search)
            ),
          ),
        ),
      ),
    );
  }
}

//this is the styling of the search box
class SearchBoxContainer extends StatelessWidget {
  final Widget child;
  const SearchBoxContainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      width: 400,
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(15)
      ),
      child: child,
    );
  }
}