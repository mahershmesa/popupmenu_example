import 'package:flutter/material.dart';

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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
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
}