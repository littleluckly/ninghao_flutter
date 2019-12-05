import 'package:flutter/material.dart';
import './demo/listview_demo.dart';
import './demo/drawer_demo.dart';
import './demo/bottom_navigation_bar_demo.dart';
import './demo/listview_demo.dart';
void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 去掉右上角的debug显示
      home: Home(),
      theme: ThemeData( // 设置主题
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('NINGHAO'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint('Search button is pressed.'),
            )
          ],
          elevation: 0.0, // 设置阴影，默认是4.0
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            Icon(Icons.change_history, size: 128.0, color: Colors.black12,),
            Icon(Icons.directions_bike, size: 128.0, color: Colors.black12,),
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo()
      ),
    );
  }
}
