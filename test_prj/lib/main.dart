import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              toolbarHeight: 70.0,
              backgroundColor: Colors.blue[400],
              leading: const Padding(
                padding: EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                child: CircleAvatar(
                  backgroundColor: Colors.pinkAccent,
                ),
              ),
              title: const Text(
                'App Name',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              actions: <Widget>[
                IconButton(
                  onPressed: () {
                    print('Search');
                  },
                  icon: const Icon(Icons.search),
                  color: Colors.white,
                  iconSize: 30.0,
                ),
                IconButton(
                  onPressed: () {
                    print('Menu');
                  },
                  icon: const Icon(Icons.menu),
                  color: Colors.white,
                  iconSize: 30.0,
                ),
              ],
            ),
            body: Container(
              // color: Colors.pink,
              child: Column(
                children: [],
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.business),
                  label: 'Menu',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'HOME',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle),
                  label: 'MyPage',
                ),
              ],
            )),
      ),
    );
  }
}

// class MyStatelessWidget extends StatelessWidget {
//   const MyStatelessWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('AppBar'),
//       ),
//       body: const Center(
//         child: Text('Body < Center'),
//       ),
//     );
//   }
// }
