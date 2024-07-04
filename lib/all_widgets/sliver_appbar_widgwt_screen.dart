import 'package:flutter/material.dart';

class SliverAppBapWidget extends StatefulWidget {
  const SliverAppBapWidget({super.key});

  @override
  State<SliverAppBapWidget> createState() => _SliverAppBapWidgetState();
}

class _SliverAppBapWidgetState extends State<SliverAppBapWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            floating: true,
            expandedHeight: 155.2,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Contact Us:-"),
              background: Image.asset(
                "accets/ll.png",
                fit: BoxFit.fill,
              ),
            ),
          ),

          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Column(
                children: [
                  const Divider(
                    height: 1,
                    color: Colors.blueGrey,
                  ),
                  InkWell(
                    onTap: () {
                      // print('Button tapped');
                    },
                    splashColor:
                        Colors.blueGrey.shade300, // Define splash color here
                    child: ListTile(
                      title: Text("Tile ${index + 1}"),
                    ),
                  ),
                ],
              );
            }, childCount: 23),


          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 45,
              child: Center(child: Text("SliverToBoxAdapter \nallow  to display any widget in sliver")),
            ),
          ),
          SliverFillViewport(
              delegate: SliverChildBuilderDelegate(
                childCount: 3,
                    (context, index) {
                return ListTile(
                  title: Text("Item $index"),
                );
              },)
          ),

          SliverFillRemaining(
            hasScrollBody: true,
            child: Container(
              color: Colors.blueGrey,
              child: Center(
                child: Text(
                  'SliverFill remaining space',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
