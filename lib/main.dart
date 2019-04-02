import 'package:flutter/material.dart';
import 'fancy_tab_bar.dart';
import 'tab_item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {

  int currentSelected;

  List<SimpleTabItem> options = [
    SimpleTabItem(
      iconData: Icons.home,
      title: "Home",
      iconColor: Colors.grey,
    ),
    SimpleTabItem(
      iconData: Icons.search,
      title: "Search",
      iconColor: Colors.grey,
    ),
    SimpleTabItem(
      iconData: Icons.person,
      title: "User",
      iconColor: Colors.grey,
    ),
    SimpleTabItem(
      iconData: Icons.calendar_today,
      title: "Sched",
      iconColor: Colors.grey,
    ),
    SimpleTabItem(
      iconData: Icons.add,
      title: "Add",
      iconColor: Colors.grey,
    ),
    SimpleTabItem(
      iconData: Icons.cloud_upload,
      title: "Upload",
      iconColor: Colors.grey,
    )
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Tab Bar Animation"),
      ),
      bottomNavigationBar: FancyTabBar(
        buttonColor: Colors.green[200],
        defaultItem: 3,
        children:options,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
          ],
        ),
      ),
    );
  }
}