import 'package:flutter/material.dart';
import 'package:responsive_layout/responsive_layout/const.dart';
import 'package:responsive_layout/util/box.dart';
import 'package:responsive_layout/util/tile.dart';

class MyMobileLayout extends StatefulWidget {
  const MyMobileLayout({super.key});

  @override
  State<MyMobileLayout> createState() => _MyMobileLayoutState();
}

class _MyMobileLayoutState extends State<MyMobileLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myBg,
      drawer: myDrawer,
    //  4 boxes on top
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                  itemCount: 4,
                  gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context, index){
                return const MyBox();
              }),
            ),
          ),

          Expanded(
              child: ListView.builder(
                itemCount: 5,
                  itemBuilder: (context, index){
                return MyTile();
              })
          )
        ],
      ),
    );
  }
}
