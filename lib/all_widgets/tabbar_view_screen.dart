import 'package:flutter/material.dart';

class TabBarViewScreen extends StatefulWidget {
  const TabBarViewScreen({Key? key}) : super(key: key);

  @override
  State<TabBarViewScreen> createState() => _TabBarViewScreenState();
}

class _TabBarViewScreenState extends State<TabBarViewScreen> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo"),
        bottom: TabBar(
          onTap: (value) {

          },

          controller: tabController,
          tabs: [
            Text("ok"),
            Text("ok"),
            Text("ok"),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                Container(color: Colors.blueGrey.shade200),
                Container(color: Colors.green.shade200),
                Container(color: Colors.blue.shade200),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
}





// import 'package:flutter/material.dart';
//
// class TabBarViewScreen extends StatefulWidget {
//   const TabBarViewScreen({Key? key}): super(key: key);
//
//   @override
//   State<TabBarViewScreen> createState() => _TabBarViewScreenState();
// }
//
// class _TabBarViewScreenState extends State<TabBarViewScreen>
//     with SingleTickerProviderStateMixin {
//   late TabController _tabController;
//
//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 3, initialIndex: 1, vsync: this);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('TabBarView Demo'),
//         bottom: TabBar(
//           controller: _tabController,
//           tabs: [
//             Tab(child: Text("Tab 1")),
//             Tab(child: Text("Tab 2")),
//             Tab(child: Text("Tab 3")),
//           ],
//         ),
//       ),
//       body: Column(
//         children: [
//
//           Expanded(
//             child: TabBarView(
//               controller: _tabController,
//               children: [
//                 Container(height: 100, width: 100, color: Colors.red.shade200),
//                 Container(height: 100, width: 100, color: Colors.green.shade200),
//                 Container(height: 100, width: 100, color: Colors.blue.shade200),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }
// }