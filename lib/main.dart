// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:snapchat_bottomnavbar_implementation/del_1.dart';
// import 'package:snapchat_bottomnavbar_implementation/del_2.dart';
// import 'package:snapchat_bottomnavbar_implementation/del_3.dart';
// import 'package:snapchat_bottomnavbar_implementation/del_4.dart';
// import 'package:snapchat_bottomnavbar_implementation/del_5.dart';
// import 'package:swipedetector/swipedetector.dart';

// void main() {
//   runApp(FinantialApp());
// }

// class FinantialApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Finantial App",
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int bottomSelectedIndex = 0;
//   Color _color;
//   final widgetOptions = [del1(), del2(), del3(), del4(), del5()];

//   PageController pageController = PageController(
//     initialPage: 0,
//     keepPage: true,
//   );

//   Widget buildPageView() {
//     return PageView(
//       controller: pageController,
//       onPageChanged: (index) {
//         // pageChanged(index);
//         setState(() {
//           bottomSelectedIndex=index;
//           pageController.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.ease);
//         });
//       },
//       children: <Widget>[
//         // Red(),
//         // Blue(),
//         // Yellow(),
//         del1(),
//         del2(), del3(), del4(), del5()
//       ],
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
// bottomNavigationBar: Stack(
//   children: [
//     Container(
//       // color: Colors.black,
//       // TODO: border curver mai custom painter lga k krna padega
//       decoration: BoxDecoration(
//         color: Colors.black,
//         // borderRadius: BorderRadius.only(
//         //   topLeft: Radius.circular(15),
//         //   topRight: Radius.circular(
//         //     15,
//         //   ),
//         // ),
//       ),
//       padding: EdgeInsets.only(top: 14),
//       child: Row(
//         children: <Widget>[
//           buildNavBarItem(FontAwesomeIcons.mapMarkerAlt, 0),
//           buildNavBarItem(FontAwesomeIcons.commentAlt, 1),
//           buildNavBarItem(Icons.camera_alt_outlined, 2),
//           buildNavBarItem(FontAwesomeIcons.userFriends, 3),
//           buildNavBarItem(Icons.play_arrow_outlined, 4),
//         ],
//       ),
//     ),
//     Container(
//       height: 8,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.only(
//           bottomLeft: Radius.circular(15),
//           bottomRight: Radius.circular(
//             15,
//           ),
//         ),
//       ),
//     ),
//   ],
// ),
//       // appBar: AppBar(
//       //   title: Text("Custom Bottom Navigation Bar"),
//       // ),
//       body:
//       // SwipeDetector(
//         // onSwipeRight: () {
//         //   print("swipe right");
//         //   setState(() {
//         //     bottomSelectedIndex = bottomSelectedIndex - 1;
//         //     build(context);
//         //   });
//         // },
//         // onSwipeDown: () {
//         //   print("swipe down");
//         // },
//         // onSwipeLeft: () {
//         //   print("swipe left");
//         // },
//         // onSwipeUp: () {
//         //   print("swipr up");
//         // },
//         // child:
//         PageView(controller: pageController,
//           children: [
//             del1(),del2(),del3(),del4(),del5()
//           ],
//           //         child: Center(
//           //   child: widgetOptions.elementAt(bottomSelectedIndex),
//           // ),
//         ),
//       // ),
//     );
//   }

// Widget buildNavBarItem(IconData icon, int index) {
//   return GestureDetector(
//     onTap: () {
//       print(index);
//       print(bottomSelectedIndex);
//       setState(() {
//         bottomSelectedIndex = index;
//         pageController.animateToPage(bottomSelectedIndex, duration: Duration(milliseconds: 500), curve: Curves.ease);
//       });
//     },
//     child: Container(
//       height: 48,
//       width: MediaQuery.of(context).size.width / 5,
//       child: Column(
//         children: [
//           Icon(icon,
//               color: index == bottomSelectedIndex
//                   ? bottomSelectedIndex == 1
//                       ? Colors.blue
//                       : bottomSelectedIndex == 0
//                           ? Colors.green
//                           : bottomSelectedIndex == 2
//                               ? Colors.yellow
//                               : bottomSelectedIndex == 3
//                                   ? Colors.purple
//                                   : bottomSelectedIndex == 4
//                                       ? Colors.red
//                                       : Colors.grey
//                   : Colors.grey),
//           index == bottomSelectedIndex
//               ? Icon(Icons.arrow_drop_up,
//                   color: index == bottomSelectedIndex
//                       ? bottomSelectedIndex == 1
//                           ? Colors.blue
//                           : bottomSelectedIndex == 0
//                               ? Colors.green
//                               : bottomSelectedIndex == 2
//                                   ? Colors.yellow
//                                   : bottomSelectedIndex == 3
//                                       ? Colors.purple
//                                       : bottomSelectedIndex == 4
//                                           ? Colors.red
//                                           : Colors.grey
//                       : Colors.grey)
//               : Container()
//         ],
//       ),
//     ),
//   );
// }
// }

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'del_1.dart';
import 'del_2.dart';
import 'del_3.dart';
import 'del_4.dart';
import 'del_5.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int bottomSelectedIndex = 2;

  List<BottomNavigationBarItem> buildBottomNavBarItems() {
    return [
      BottomNavigationBarItem(
          icon: new Icon(Icons.home), title: new Text('Red')),
      BottomNavigationBarItem(
        icon: new Icon(Icons.search),
        title: new Text('Blue'),
      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.info_outline), title: Text('Yellow'))
    ];
  }

  PageController pageController = PageController(
    initialPage: 2,
    keepPage: true,
  );

  Widget buildPageView() {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[del1(), del2(), del3(), del4(), del5()],
    );
  }

  Widget buildNavBarItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        print(index);
        print(bottomSelectedIndex);
        setState(() {
          bottomSelectedIndex = index;
          pageController.animateToPage(bottomSelectedIndex,
              duration: Duration(milliseconds: 500), curve: Curves.ease);
        });
      },
      child: Container(
        height: 48,
        width: MediaQuery.of(context).size.width / 5,
        child: Column(
          children: [
            Icon(icon,
                color: index == bottomSelectedIndex
                    ? bottomSelectedIndex == 1
                        ? Colors.blue
                        : bottomSelectedIndex == 0
                            ? Colors.green
                            : bottomSelectedIndex == 2
                                ? Colors.yellow
                                : bottomSelectedIndex == 3
                                    ? Colors.purple
                                    : bottomSelectedIndex == 4
                                        ? Colors.red
                                        : Colors.grey
                    : Colors.grey),
            index == bottomSelectedIndex
                ? Icon(Icons.arrow_drop_up,
                    color: index == bottomSelectedIndex
                        ? bottomSelectedIndex == 1
                            ? Colors.blue
                            : bottomSelectedIndex == 0
                                ? Colors.green
                                : bottomSelectedIndex == 2
                                    ? Colors.yellow
                                    : bottomSelectedIndex == 3
                                        ? Colors.purple
                                        : bottomSelectedIndex == 4
                                            ? Colors.red
                                            : Colors.grey
                        : Colors.grey)
                : Container()
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(index,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: buildPageView(),
      bottomNavigationBar: Stack(
        children: [
          Container(
            // color: Colors.black,
            // TODO: border curver mai custom painter lga k krna padega
            decoration: BoxDecoration(
              color: Colors.black,
              // borderRadius: BorderRadius.only(
              //   topLeft: Radius.circular(15),
              //   topRight: Radius.circular(
              //     15,
              //   ),
              // ),
            ),
            padding: EdgeInsets.only(top: 14),
            child: Row(
              children: <Widget>[
                buildNavBarItem(FontAwesomeIcons.mapMarkerAlt, 0),
                buildNavBarItem(FontAwesomeIcons.commentAlt, 1),
                buildNavBarItem(Icons.camera_alt_outlined, 2),
                buildNavBarItem(FontAwesomeIcons.userFriends, 3),
                buildNavBarItem(Icons.play_arrow_outlined, 4),
              ],
            ),
          ),
          Container(
            height: 8,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(
                  15,
                ),
              ),
            ),
          ),
        ],
      ),
      // BottomNavigationBar(
      //   currentIndex: bottomSelectedIndex,
      //   onTap: (index) {
      //     bottomTapped(index);
      //   },
      //   items: buildBottomNavBarItems(),
      // ),
    );
  }
}

class Red extends StatefulWidget {
  @override
  _RedState createState() => _RedState();
}

class _RedState extends State<Red> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}

class Blue extends StatefulWidget {
  @override
  _BlueState createState() => _BlueState();
}

class _BlueState extends State<Blue> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
    );
  }
}

class Yellow extends StatefulWidget {
  @override
  _YellowState createState() => _YellowState();
}

class _YellowState extends State<Yellow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellowAccent,
    );
  }
}
