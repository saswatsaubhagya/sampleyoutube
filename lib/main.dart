import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
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
  Widget videocard() {
    return Container(
      child: Column(
        children: [
          //video
          Container(
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height / 3,
            color: Colors.grey,
          ),
          //titel & sub titel
          Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Video titel"),
                      Text("subtitel of video"),
                    ],
                  ),
                )
              ],
            ),
          )
          // ListTile(
          //   leading: CircleAvatar(
          //     backgroundColor: Colors.black,
          //   ),
          //   title: Text("Video titel"),
          //   subtitle: Text("subtitel of video"),
          // )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Icon(Icons.ac_unit),
            Text("Youtube"),
          ],
        ),
        actions: [
          Icon(Icons.share),
          SizedBox(
            width: 8,
          ),
          Icon(Icons.notification_important),
          SizedBox(
            width: 8,
          ),
          Icon(Icons.search),
          SizedBox(
            width: 8,
          ),
          Icon(Icons.supervised_user_circle),
        ],
      ),
      body: Container(
        child: ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index) {
            return videocard();
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: "Explore",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_rounded),
              label: "",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.subscript),
              label: "Sub",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_add_check_rounded),
              label: "Lib",
              backgroundColor: Colors.black),
        ],
      ),
    );
  }
}
