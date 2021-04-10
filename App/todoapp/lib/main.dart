import 'package:flutter/material.dart';
import 'core/constant.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PlayStore Todo',
      home: SafeArea(child: MyHomePage()),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home),),
              Tab(icon: Icon(Icons.rss_feed),),
              Tab(icon: Icon(Icons.perm_identity),),
            ],
            labelColor: darkGreyColor,
            unselectedLabelColor: Colors.blue,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.all(5.0),
            indicatorColor: Colors.transparent,
          ),
        ),
        body: Stack(
          children:[
            TabBarView(
            children: [
              Container(color: darkGreyColor,),
              Container(color: Colors.blue,),
              Container(color: Colors.yellow,),
            ],

          ),
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(40.0),
                bottomLeft: Radius.circular(40.0),
              ),
              child: Container(
                height: MediaQuery.of(context).size.height / 4.0,
                padding: EdgeInsets.only(left: 50),
                color: Colors.white,
                child: Row(

                  children: [
                    Text('Intray', style: intrayTitleStyle,)
                  ],
                ),
              ),


            ),
            Container(
              margin: EdgeInsets.only(
                  top: 120,
                  left: MediaQuery.of(context).size.width * 0.425),
              child: FloatingActionButton(
                child: Icon(Icons.add, size: 40,),
                backgroundColor: redColor,
                onPressed: (){},
              ),
            ),
         ],
        ),
      ),
    );
  }
}

