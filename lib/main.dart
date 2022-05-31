import 'package:flutter/material.dart';
import 'package:foucas/page/multiple_menu_widget.dart';
import 'package:foucas/page/single_menu_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
static final String title = 'Focused Popup Menu';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(title: title),
    );
  }
}

class MainPage extends StatefulWidget {
 // final String title;
  const MainPage({ Key? key, required String title,   }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildPages(),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          selectedItemColor: Colors.red,
          backgroundColor: Colors.black,
          unselectedItemColor: Colors.white70,
          items: [
            BottomNavigationBarItem(
              icon: Text('PopupMenu', style: TextStyle(color: Colors.white)),
              title: Text('Single'),
            ),
            BottomNavigationBarItem(
              icon: Text('PopupMenu', style: TextStyle(color: Colors.white)),
              title: Text('Multiple'),
            ),
          ],
          onTap: (int index) => setState(() => this.index = index),
        ),
      );
  }
Widget buildPages() {
    switch (index) {
      case 0:
      //  return SingleMenuWidget();
      case 1:
        return MultipleMenuWidget();
      default:
        return Container();
    }
  }
}