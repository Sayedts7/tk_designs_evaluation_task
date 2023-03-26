import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:tk_designs_evaluation/utils/contstants.dart';
import 'package:tk_designs_evaluation/view/Home.dart';
import 'package:tk_designs_evaluation/view/pages.dart';

class Navigation_bar extends StatefulWidget {
  const Navigation_bar({super.key});

  @override
  _Navigation_barState createState() => _Navigation_barState();
}

class _Navigation_barState extends State<Navigation_bar> {
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  final pageController = PageController();
  final List<dynamic> _page = [
    const Home(),
    const page2(),
    const page3(),
    const page4(),
  ];

  int _activePage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: _activePage,
          height: 70.0,
          items:  <Widget>[
            SizedBox(
              height: 45,
              child: Column(
                children: const [
                  Icon(Icons.home,
                      color: Colors.white,
                      size: 30),

                  Text("Home",
                    style: TextStyle(color: Colors.white, fontSize: 10),)],
              ),
            ),

            SizedBox(
              height: 42,
              child: Column(
                children: const [
                  Icon(Icons.assignment,
                      color: Colors.white,
                      size: 25),

                  Text("Orders",
                    style: TextStyle(color: Colors.white, fontSize: 8),)],
              ),
            ),

            SizedBox(
              height: 45,
              child: Column(
                children: const [
                  Icon(Icons.watch_later_outlined,
                    color: Colors.white,
                      size: 30),

                  Text("History",
                    style: TextStyle(color: Colors.white, fontSize: 10),)],
              ),
            ),

            SizedBox(
              height: 45,
              child: Column(
                children: const [
                  Icon(Icons.people,
                      color: Colors.white,
                      size: 30),

                  Text("Clients", style: TextStyle(color: Colors.white, fontSize: 10),)],
              ),
            ),
           ],
          color: appColor1,
          
          buttonBackgroundColor: appColor1,
          backgroundColor: Color(0xff00FFFFFF),

          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _activePage = index;
            });
          },
          letIndexChange: (index) => true,
        ),
        body: Container(
          color: Colors.blueAccent,
          child: Center(
            child:_page[_activePage]
          ),
        ));
  }
}
