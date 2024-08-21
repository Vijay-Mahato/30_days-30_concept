import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Day7 extends StatelessWidget {
  const Day7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          backgroundColor: Theme.of(context).primaryColor,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          elevation: 0,
          child: ListView(
            children: [
              DrawerHeader(
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 2),
                      ),
                      child: ClipOval(
                        child: CachedNetworkImage(
                          imageUrl:
                              'https://xsgames.co/randomusers/assets/avatars/male/74.jpg',
                          fit: BoxFit.cover,
                          placeholder: (context, url) => const Center(
                            child: CircularProgressIndicator(),
                          ),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error_outline),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Vijay Mahato",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 15),
                        ),
                        Text(
                          "sssjvijay531@gmail.com",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 12),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.folder,
                  color: Colors.white,
                ),
                textColor: Colors.white,
                title: Text(
                  'My Files',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.group,
                  color: Colors.white,
                ),
                textColor: Colors.white,
                title: Text(
                  'Shared With Me',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.star_border,
                  color: Colors.white,
                ),
                textColor: Colors.white,
                title: Text(
                  'Starred',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
                textColor: Colors.white,
                title: Text(
                  'Trash',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.upload,
                  color: Colors.white,
                ),
                textColor: Colors.white,
                title: Text(
                  'Uploads',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(),
              const Divider(),
              const ListTile(
                leading: Icon(
                  Icons.share,
                  color: Colors.white,
                ),
                textColor: Colors.white,
                title: Text(
                  'Shares',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                textColor: Colors.white,
                title: Text(
                  'Logout',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          centerTitle: false,
          title: const Text(
            "Day-7 Drawer Widget",
            style: TextStyle(
                color: Colors.white, fontSize: 17, fontWeight: FontWeight.w700),
          ),
        ),
        body: Center(
            child: Container(
                margin: const EdgeInsets.all(10),
                color: Colors.brown[600],
                height: 200,
                width: double.maxFinite,
                child: DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                  child: Center(
                    child: AnimatedTextKit(
                      totalRepeatCount: 5,
                      isRepeatingAnimation: true,
                      pause: const Duration(seconds: 1),
                      animatedTexts: [
                        FadeAnimatedText('do IT!'),
                        FadeAnimatedText('do it RIGHT!!'),
                        FadeAnimatedText('do it RIGHT NOW!!!'),
                      ],
                      onTap: () {
                        print("Tap Event");
                      },
                    ),
                  ),
                ))));
  }
}
