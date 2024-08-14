import 'package:flutter/material.dart';

class Day7 extends StatelessWidget {
  const Day7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Theme.of(context).primaryColor,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: Container(
                child: const Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoq0f1tSU2b8opZaApGh5tl2FreFb52dyo6Q&s'),
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Vijay Mahato",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        Text(
                          "sssjvijay531@gmail.com",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
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
            ),
          ],
        ),
      ),
      appBar: AppBar(
          centerTitle: false,
          title: const Text(
            "Day-7 Drawer",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          backgroundColor: Theme.of(context).primaryColor),
      body: Center(
        child: Container(
          child: const Text(
            "Example of Drawer",
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
