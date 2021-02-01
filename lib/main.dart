import 'package:flutter/material.dart';

const kPrimaryColorPurple = Colors.deepPurpleAccent;
const kPrimaryColorOrange = Colors.orange;

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: buildMainAppBar(),
        body: NavBar(),
      ),
    ),
  );
}

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.2,
      child: Stack(
        children: [
          Container(
            height: size.height * 0.2 - 30,
            decoration: BoxDecoration(
              color: kPrimaryColorPurple,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
          ),
          Positioned(
            child: Container(
              height: size.height * 0.1,
              decoration: BoxDecoration(
                color: kPrimaryColorOrange,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

AppBar buildMainAppBar() {
  return AppBar(
    backgroundColor: kPrimaryColorPurple,
    leading: Icon(
      Icons.email,
      size: 100.0,
    ),
    title: TextFormField(
      style: TextStyle(
        fontSize: 18,
        color: Colors.black,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white.withOpacity(0.1),
        prefixIcon: Icon(
          Icons.search,
          color: Colors.grey,
        ),
        hintText: 'Search Here',
        hintStyle: TextStyle(
          color: Colors.grey,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
      ),
    ),
  );
}
