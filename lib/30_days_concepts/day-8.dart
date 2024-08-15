import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Day8 extends StatelessWidget {
  const Day8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Day-8 Image-Widget",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: Center(
          child: Container(
            height: 250,
            width: 350,
            child: CachedNetworkImage(
              imageUrl:
                  "https://assets1.ignimgs.com/2019/03/14/avengers-endgame-ver2-poster-button-1552573654882.jpg",
              placeholder: (context, url) =>
                  const Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) =>
                  const Center(child: const Icon(Icons.error_outline)),
            ),
          ),
        ));
  }
}
