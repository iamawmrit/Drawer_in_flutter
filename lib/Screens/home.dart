// ignore_for_file: unnecessary_const

import 'dart:html';

import 'package:flutter/material.dart';

// function to trigger app build

class Home extends StatelessWidget {
  final appTitle = 'Flutter Drawer Demo';

  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
      debugShowCheckedModeBanner: false,
    ); // MaterialApp
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
          child: Text(
        'A drawer is an invisible side screen.',
        style: TextStyle(fontSize: 20.0),
      )),
      drawer: Drawer(
        width: 200,
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            // const DrawerHeader(),
            //   // decoration: BoxDecoration(
            //   //   image: DecorationImage(
            //   //     image: NetworkImage("https://picsum.photos/250?image=69"),
            //   //     fit: BoxFit.cover,
            //   //   ),
            //   // ),
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 74, 81, 87),
                image: const DecorationImage(
                  image: const NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmI389MmFguMK_PPYYmok7kiUyKTZIdZRH2A&usqp=CAU'),
                  fit: BoxFit.cover,
                ),
              ),
              accountName: Text(
                "Amrit Adhikari",
                style: TextStyle(fontSize: 18),
              ),
              accountEmail: Text("awmrit@gmail.com"),
              currentAccountPictureSize: Size.square(60),
              currentAccountPicture: CircleAvatar(
                backgroundImage:
                    NetworkImage("https://picsum.photos/250?image=9"),
              ),
            ),

            const SizedBox(height: 3),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(' My Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text(' My Course '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.workspace_premium),
              title: const Text(' Go Premium '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.video_label),
              title: const Text(' Saved Videos '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text(' Edit Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('LogOut'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
