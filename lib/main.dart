import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clock_ui/screens/first_screen.dart';
import 'package:flutter_clock_ui/screens/second_screen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Clock',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new AppClock(),
    );
  }
}

class AppClock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: double.infinity,
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          bottomNavigationBar: BottomBar(),
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(55),
              child: Container(
                color: Colors.transparent,
                child: SafeArea(
                  child: Column(
                    children: const [
                      TabBar(
                        indicator: UnderlineTabIndicator(
                          borderSide:
                              BorderSide(color: Color(0xffff0863), width: 4.0),
                        ),
                        indicatorWeight: 15,
                        indicatorSize: TabBarIndicatorSize.label,
                        labelColor: Color(0xff2d386b),
                        labelStyle: TextStyle(
                            fontSize: 12,
                            letterSpacing: 1.3,
                            fontWeight: FontWeight.w500),
                        unselectedLabelColor: Colors.black26,
                        tabs: [
                          Tab(
                            text: "ALARMS",
                            icon: Icon(
                              Icons.watch_later,
                              size: 48,
                            ),
                          ),
                          Tab(
                            text: "RECORDS",
                            icon: Icon(
                              Icons.menu,
                              size: 48,
                            ),
                          ),
                          Tab(
                            text: "PROFILE",
                            icon: Icon(
                              Icons.supervised_user_circle,
                              size: 48,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: FirstTab(),
              ),
              Center(
                child: SecondScreen(),
              ),
              Text('hhelo 3'),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(30, 10, 30, 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FlatButton(
            onPressed: () {},
            child: Text(
              "Edit Alarm",
              style: TextStyle(letterSpacing: 1.5),
            ),
            color: Color(0xffff5e92),
            textColor: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          ),
          FloatingActionButton(
            onPressed: () {},
            child: Text(
              '+',
              style: TextStyle(
                  color: Color(0xff253165),
                  fontWeight: FontWeight.w700,
                  fontSize: 25),
            ),
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            elevation: 5,
            highlightElevation: 3,
          )
        ],
      ),
    );
  }
}
