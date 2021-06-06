import 'dart:ffi';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color logocolor = Color(0xFF3F45B6);
  Color cardblue = Color(0xFF4751CC);
  Color adgray = Color(0xFFEFEFEF);
  Color cardgreen = Color(0xFFB3C231);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          "GARDERN",
          style: TextStyle(
            color: logocolor,
            fontSize: 30,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: adgray,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0, vertical: 10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.notifications_on_outlined),
                          Padding(padding: EdgeInsets.all(3.0),),
                          Text(
                            "공지사항",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                          Container(
                              height: 27,
                              child: VerticalDivider(color: Colors.black)
                          ),
                          Text(
                            "GARDERN 드디어 출시!",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                child: Hero(
                  tag: "card",
                  child: InkWell(
                    child: DeliveryState(),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              Container(
                child: Hero(
                  tag: "card",
                  child: InkWell(
                    child: Event(),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
            ],

        ),
      ),
    ),
  );
  }
}

class DeliveryState extends StatelessWidget {
  const DeliveryState({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              blurRadius: 5.0, color: Color(0x6310279c), offset: Offset(0, 5)),
        ],
        borderRadius: BorderRadius.circular(8.0),
        gradient: LinearGradient(
          colors: [
            Color(0xff31A2AF),
            Color(0xff4751CC),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Text(
                "나의 배송현황",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            Row(
              children: <Widget>[
                Text(
                  "서류 외 3건",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                SizedBox(
                  width: 30,
                ),
              ],
            ),
            SizedBox(
              height: 70,
            ),
          ],
        ),
      ),
    );
  }
}

class Event extends StatelessWidget {
  const Event({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              blurRadius: 5.0, color: Color(0x6310279c), offset: Offset(0, 5)),
        ],
        borderRadius: BorderRadius.circular(8.0),
        gradient: LinearGradient(
          colors: [
            Color(0xffAEC131),
            Color(0xff31AD31),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Text(
                "이벤트",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            Row(
              children: <Widget>[
                Text(
                  "첫 주문시 1000원 할인!",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                SizedBox(
                  width: 30,
                ),
              ],
            ),
            SizedBox(
              height: 70,
            ),
          ],
        ),
      ),
    );
  }
}
