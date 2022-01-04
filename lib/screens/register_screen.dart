import 'package:flutter/material.dart';
import 'package:pharma/constants.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  String? selectedGender;

  String? selectedAge;

  DropdownButton<String> ageDropdown() {
    List<DropdownMenuItem<String>> dropdownItems = [];
    for (String age in Age) {
      var newItem = DropdownMenuItem(
        child: Text(age),
        value: age,
      );
      dropdownItems.add(newItem);
    }
    return DropdownButton<String>(
      underline: SizedBox(),
      hint: Text(
        'Age',
        style: TextStyle(
          color: Colors.grey,
          fontSize: 20.0,
        ),
      ),
      style: TextStyle(
        color: KBasicColor,
        fontSize: 15,
      ),
      value: selectedAge,
      items: dropdownItems,
      icon: Icon(
        Icons.arrow_drop_down,
        color: KBasicColor,
        size: 30,
      ),
      isExpanded: true,
      onChanged: (value) {
        setState(() {
          selectedAge = value!;
        });
      },
    );
  }

  DropdownButton<String> genderDropdown() {
    List<DropdownMenuItem<String>> dropdownItems = [];
    for (String gender in Gender) {
      var newItem = DropdownMenuItem(
        child: Text(gender),
        value: gender,
      );
      dropdownItems.add(newItem);
    }
    return DropdownButton<String>(
      underline: SizedBox(),
      hint: Text(
        'Gender',
        style: TextStyle(
          color: Colors.grey,
          fontSize: 20.0,
        ),
      ),
      style: TextStyle(
        color: KBasicColor,
        fontSize: 15,
      ),
      icon: Icon(
        Icons.arrow_drop_down,
        color: KBasicColor,
        size: 30,
      ),
      isExpanded: true,
      value: selectedGender,
      items: dropdownItems,
      onChanged: (value) {
        setState(() {
          selectedGender = value!;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Because you are an important client we want to know more about you:',
                  style: TextStyle(
                    color: KGreyColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: TextField(
                    decoration: KInputDecoration.copyWith(
                      hintText: 'Full Name',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                      contentPadding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        width: 50,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border(
                            right: borderSide,
                            left: borderSide,
                            top: borderSide,
                            bottom: borderSide,
                          ),
                        ),
                        child: ageDropdown(),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        width: 50,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border(
                            right: borderSide,
                            left: borderSide,
                            top: borderSide,
                            bottom: borderSide,
                          ),
                        ),
                        child: genderDropdown(),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Expanded(
                  child: TextField(
                    decoration: KInputDecoration.copyWith(
                        hintText: 'Address',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                        contentPadding: EdgeInsets.fromLTRB(10, 15, 10, 15)),
                  ),
                ),
                Expanded(
                  child: TextField(
                    decoration: KInputDecoration.copyWith(
                      hintText: 'Phone',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                      contentPadding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: TextField(
                      maxLines: null,
                      decoration: KInputDecoration.copyWith(
                        contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 100),
                        hintText: 'Tell us if you have any problem',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Flexible(
                  child: ElevatedButton(
                    style: TextButton.styleFrom(
                      backgroundColor: KNoneBasicColor,
                      padding: EdgeInsets.fromLTRB(120, 15, 120, 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'registration');
                    },
                    child: Text(
                      'Done',
                      style: TextStyle(
                        color: KBasicColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'search');
                  },
                  child: Text(
                    'skip',
                    style: TextStyle(
                        fontSize: 15,
                        color: KBasicColor,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
