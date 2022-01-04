import 'package:flutter/material.dart';
import 'package:pharma/constants.dart';

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: TabBar(
            labelStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            labelPadding: EdgeInsets.all(5),
            indicatorPadding: EdgeInsets.only(left: 20, right: 20),
            controller: tabController,
            unselectedLabelColor: KBasicColor,
            indicatorColor: KBasicColor,
            labelColor: KBasicColor,
            indicatorWeight: 5,
            tabs: [
              Tab(
                text: 'Login',
              ),
              Tab(
                text: 'Sign up',
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: tabController,
          children: [
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.only(right: 10, left: 10, bottom: 30),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: KInputDecoration.copyWith(
                          contentPadding:
                              EdgeInsets.only(top: 20, bottom: 20, left: 20),
                          hintText: 'User Name',
                          hintStyle: TextStyle(
                            color: KGreyColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      padding: EdgeInsets.only(left: 10, right: 10, bottom: 30),
                      child: TextField(
                        obscureText: true,
                        decoration: KInputDecoration.copyWith(
                          contentPadding:
                              EdgeInsets.only(top: 20, bottom: 20, left: 20),
                          suffixIcon: Icon(
                            Icons.visibility_off_rounded,
                            color: KNoneBasicColor,
                          ),
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            color: KGreyColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Flexible(
                    child: ElevatedButton(
                      style: TextButton.styleFrom(
                        backgroundColor: KNoneBasicColor,
                        padding: EdgeInsets.fromLTRB(105, 15, 105, 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: null,
                      child: Text(
                        'Continue',
                        style: TextStyle(
                          color: KBasicColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Forget?',
                        style: TextStyle(
                          color: KBasicColor,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        ' Reset',
                        style: TextStyle(
                          color: KNoneBasicColor,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.circle,
                        color: KBasicColor,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.circle_outlined,
                        color: Colors.grey,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Center(
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(top: 15, left: 10),
                            child: TextField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: KInputDecoration.copyWith(
                                hintText: 'First Name',
                                hintStyle: TextStyle(
                                  color: KGreyColor,
                                ),
                                contentPadding: EdgeInsets.only(
                                    top: 15, bottom: 15, left: 30),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(top: 15, right: 10),
                            child: TextField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: KInputDecoration.copyWith(
                                hintText: 'Last Name',
                                hintStyle: TextStyle(
                                  color: KGreyColor,
                                ),
                                contentPadding: EdgeInsets.only(
                                    top: 15, bottom: 15, left: 30),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: TextField(
                        decoration: KInputDecoration.copyWith(
                          hintText: 'User name',
                          hintStyle: TextStyle(
                            color: KGreyColor,
                          ),
                          contentPadding: EdgeInsets.fromLTRB(20, 20, 10, 20),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: TextField(
                        decoration: KInputDecoration.copyWith(
                          hintText: 'Email Address @gmail.com',
                          hintStyle: TextStyle(
                            color: KGreyColor,
                          ),
                          contentPadding: EdgeInsets.fromLTRB(20, 20, 10, 20),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: TextField(
                        obscureText: true,
                        decoration: KInputDecoration.copyWith(
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            color: KGreyColor,
                          ),
                          suffixIcon: Icon(
                            Icons.visibility_off_rounded,
                            color: KNoneBasicColor,
                          ),
                          contentPadding: EdgeInsets.fromLTRB(20, 20, 10, 20),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: ElevatedButton(
                      style: TextButton.styleFrom(
                        backgroundColor: KNoneBasicColor,
                        padding: EdgeInsets.fromLTRB(130, 15, 130, 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'registration');
                      },
                      child: Text(
                        'Next',
                        style: TextStyle(
                          color: KBasicColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
