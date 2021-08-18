import 'package:flutter/material.dart';

import '/screens/shop_screen.dart';
import '/screens/tab_bar_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(primarySwatch: Colors.blue, canvasColor: Colors.orange),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 6, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (AppBar(
        title: Center(
          child: Text(
            'Our Shop',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt_rounded,
            ),
          )
        ],
      )),
      drawer: Drawer(),
      backgroundColor: Colors.blue.shade100,
      body: Column(
        children: [
          TabBarWidget(tabController: _tabController),
          Expanded(child: ShopScreen()),
        ],
      ),
    );
  }
}
