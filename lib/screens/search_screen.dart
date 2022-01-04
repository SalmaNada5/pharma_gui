import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  int selectedItem = 0;

  void onTap(int index) {
    setState(() {
      selectedItem = index;
    });
  }

  Decoration containerDecoration(ImageProvider<Object> selectedImage) {
    return BoxDecoration(
      color: Colors.white,
      image: DecorationImage(
        image: selectedImage,
      ),
      borderRadius: BorderRadius.circular(40),
      boxShadow: [
        BoxShadow(
          color: KNoneBasicColor,
          spreadRadius: 2,
          blurRadius: 7,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 180,
                    width: double.infinity,
                    child: Image.asset('images/1.jpeg', fit: BoxFit.cover),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 55, left: 10),
                    child: Text(
                      'Changing the way you\nreceive healthcare with\nmedical excellence',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    width: 330,
                    height: 55,
                    margin: EdgeInsets.only(left: 10, top: 150, right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 2,
                          blurRadius: 7,
                        ),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: Icon(
                          Icons.search,
                          size: 30,
                        ),
                        suffixIcon: Icon(
                          Icons.keyboard_voice,
                          size: 30,
                        ),
                        contentPadding:
                            EdgeInsets.only(left: 20, top: 15, right: 10),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                        ),
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 2.0),
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 30,
                  top: 10,
                ),
                child: Text(
                  "Quick service",
                  style: TextStyle(
                    color: KBasicColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: 90,
                          height: 70,
                          decoration: containerDecoration(
                            AssetImage('images/Drugs.jpeg'),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Drugs',
                          style: KTextStyle,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          decoration: containerDecoration(
                            AssetImage('images/Ask doc.jpeg'),
                          ),
                          width: 90,
                          height: 70,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Ask Doc',
                          style: KTextStyle,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: 90,
                          height: 70,
                          decoration: containerDecoration(
                            AssetImage('images/upload.jpeg'),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Upload prescription',
                          style: KTextStyle,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 30, bottom: 10),
                child: Text(
                  'Top Categories',
                  style: TextStyle(
                    color: KBasicColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: 90,
                          height: 70,
                          decoration: containerDecoration(
                            AssetImage('images/women care.jpeg'),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Women care',
                          style: KTextStyle,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          decoration: containerDecoration(
                            AssetImage('images/scin care.jpeg'),
                          ),
                          width: 90,
                          height: 70,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Skin care',
                          style: KTextStyle,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: 90,
                          height: 70,
                          decoration: containerDecoration(
                            AssetImage('images/baby care.jpeg'),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Baby care',
                          style: KTextStyle,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: IconThemeData(
          color: KNoneBasicColor,
          size: 35,
        ),
        unselectedIconTheme: IconThemeData(
          color: Colors.white,
          size: 35,
        ),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: KBasicColor,
            label: "",
            icon: Icon(FontAwesomeIcons.home),
          ),
          BottomNavigationBarItem(
            backgroundColor: KBasicColor,
            label: "",
            icon: Icon(FontAwesomeIcons.heart),
          ),
          BottomNavigationBarItem(
            backgroundColor: KBasicColor,
            label: "",
            icon: Icon(FontAwesomeIcons.shoppingCart),
          ),
          BottomNavigationBarItem(
            backgroundColor: KBasicColor,
            label: "",
            icon: Icon(FontAwesomeIcons.bell),
          ),
          BottomNavigationBarItem(
            backgroundColor: KBasicColor,
            label: "",
            icon: Icon(FontAwesomeIcons.user),
          ),
        ],
        currentIndex: selectedItem,
        onTap: onTap,
      ),
    );
  }
}
