import 'package:flutter/material.dart';

class tabber_screen extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    return  DefaultTabController(
        length: 3,
        initialIndex: 1,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tab Demo"),
            backgroundColor: Colors.grey,
            centerTitle: true,
            bottom:const TabBar(
              isScrollable: true,
              // padding: EdgeInsets.all(1),
              labelPadding: EdgeInsets.symmetric(horizontal: 30),
              indicatorColor: Colors.red,
              tabs: [
                Tab(child:Column(children: [Icon(Icons.account_balance),Text("Home",style: TextStyle(fontSize: 10),)],),),
                Tab(child:Column(children: [Icon(Icons.account_balance),Text("Home",style: TextStyle(fontSize: 10),)],),),
                Tab(child:Column(children: [Icon(Icons.account_balance),Text("Home",style: TextStyle(fontSize: 10),)],),)
              ],
            ),
          ),
          body: TabBarView(children: [
            Container(height: 200,width:100,color: Colors.white10,child: Center(child: Column(mainAxisAlignment:MainAxisAlignment.center , children: [Icon(Icons.call,size: 34,),Text("Make A call",style: TextStyle(fontSize: 34),)],),),),
            Container(height: 200,width:100,color: Colors.grey,child: Center(child: Column(mainAxisAlignment:MainAxisAlignment.center , children: [Icon(Icons.call,size: 34,),Text("Make A call",style: TextStyle(fontSize: 34),)],),),),
            Container(height: 200,width:100,color: Colors.blueGrey,child: Center(child: Column(mainAxisAlignment:MainAxisAlignment.center , children: [Icon(Icons.call,size: 34,),Text("Make A call",style: TextStyle(fontSize: 34),)],),),),

          ],),
        ));


  }
}




