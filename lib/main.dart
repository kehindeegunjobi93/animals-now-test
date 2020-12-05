import 'package:counter_app/sub_pages/Counter1.dart';
import 'package:counter_app/sub_pages/Counter2.dart';
import 'package:counter_app/sub_pages/Counter3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        "/": (context) => Wrapper(),
      }
    );
  }
}

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  int _selectedIndex = 0;
  //The list of sub pages
  static List<Widget> _widgetOptions = <Widget>[
   Counter1(pageNumber: 1,),
    Counter2(pageNumber: 2,),
    Counter3(pageNumber: 3,)
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      //The bottom navigation for our three items Counter 1, Counter 3 and Counter 3
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
                title: Text('Counter 1'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
                title: Text('Counter 2'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              title: Text('Counter 3'),
            ),
          ],
          backgroundColor: Colors.blue,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5
      ),
    );
  }
}



