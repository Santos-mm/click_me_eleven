import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _likeincrement = 0;
  int _unlikeincrement = 0;
  int _loveincrement = 0;

  void likeincrement() {
    setState(() {
      _likeincrement++ * 2;
    });
  }

  void loveincrement() {
    setState(() {
      _loveincrement++ * 5;
    });
  }

  void unlikeincrement() {
    setState(() {
      _unlikeincrement++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Click Me'),
          backgroundColor: Colors.cyan,
          actions: [
            IconButton(
                onPressed: () {
                  _unlikeincrement = 0;
                  _loveincrement = 0;
                  _likeincrement = 0;
                },
                icon: Icon(Icons.leaderboard))
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(12.0),
          margin: EdgeInsets.all(12),
          width: double.maxFinite,
          height: 600.0,
          color: Color.fromARGB(255, 239, 219, 225),
          child: Column(
            children: [
              Text('This is your Click Me post !'),
              SizedBox(
                height: 100,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [Text('${_loveincrement}'), Text('❤️')],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [Text('${_likeincrement}'), Text('👍')],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [Text('${_unlikeincrement}'), Text('👎')],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        floatingActionButton: Container(
          padding: EdgeInsets.only(left: 12, right: 12, top: 12),
          child: SingleChildScrollView(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FilledButton(
                    onPressed: () {
                      loveincrement();
                    },
                    child: Text(
                      "❤️Love",
                      style: TextStyle(fontSize: 13),
                    )),
                FilledButton(
                    onPressed: () {
                      likeincrement();
                    },
                    child: Text(
                      "👍Like",
                      style: TextStyle(fontSize: 13),
                    )),
                FilledButton(
                    onPressed: () {
                      unlikeincrement();
                    },
                    child: Text(
                      "👎UnLike",
                      style: TextStyle(fontSize: 13),
                    )),
                // FilledButton(
                //     onPressed: () {
                //       _unlikeincrement = 0;
                //       _loveincrement = 0;
                //       _likeincrement = 0;
                //     },
                //     child: Text(
                //       "Restart",
                //       style: TextStyle(fontSize: 13),
                //     ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
