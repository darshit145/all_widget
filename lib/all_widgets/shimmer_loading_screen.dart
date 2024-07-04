import 'package:shimmer/shimmer.dart';
import 'package:flutter/material.dart';
class ShimmerLoadingScreen  extends StatefulWidget {
  const ShimmerLoadingScreen ({super.key});

  @override
  State<ShimmerLoadingScreen> createState() => _ShimmerLoadingScreen();
}

class _ShimmerLoadingScreen extends State<ShimmerLoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ShimmerLoadingScreen"),
      ),
      body: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            child: Shimmer.fromColors(
              baseColor: Colors.white,
              highlightColor: Colors.white10,
              child: Card(
                color: Colors.white10,
              ),
            ),
          )
         ],
      )
    );
  }
}
