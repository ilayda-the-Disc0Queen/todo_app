import 'package:flutter/material.dart';
import 'package:todo_app/UI/intray/intray_page.dart';
import 'package:todo_app/models/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Todo app'),
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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // color: Colors.pink,
      home: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: new Scaffold(
            body: Stack(children: <Widget>[
              TabBarView(
                children: [
                  IntrayPage(),
                  new Container(color: kLighterDarkGreyColour),
                  new Container(color: kDarkGreyColour),
                ],
              ),
              Container(
                padding: EdgeInsets.only(left: 50),
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Intray', style: kIntrayTextStyle),
                    Container(),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 120,
                    left: (MediaQuery.of(context).size.width * 0.5) -
                        (kPlusButtonHeight / 2)),
                child: Container(
                  height: kPlusButtonHeight,
                  width: kPlusButtonHeight,
                  child: FloatingActionButton(
                    // to change the size of the button more easily, wrap it in a
                    // container
                    onPressed: () {},
                    child: Icon(
                      Icons.add,
                      size: 60,
                    ),
                    backgroundColor: kRedColour,
                  ),
                ),
              )
            ]),
            appBar: AppBar(
              elevation: 0,
              title: TabBar(
                tabs: [
                  Tab(icon: new Icon(Icons.home)),
                  Tab(icon: new Icon(Icons.rss_feed)),
                  Tab(icon: new Icon(Icons.perm_identity)),
                ],
                labelColor: kDarkGreyColour,
                unselectedLabelColor: kLighterDarkGreyColour,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorPadding: EdgeInsets.all(5.0),
                indicatorColor: Colors.white,
              ),
              backgroundColor: Colors.white,
            ),
            // backgroundColor: Colors.pink,
          ),
        ),
      ),
    );
  }
}
