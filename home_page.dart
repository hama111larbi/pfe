import 'package:epay_flutter/camera.dart';
import 'package:epay_flutter/login_page.dart';
import 'package:epay_flutter/pageone.dart';
import 'package:epay_flutter/profile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

//cette page pour le navbar

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: const <BottomNavigationBarItem>[
            //active color use on first
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              activeIcon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.camera,
                  color: Colors.black,
                ),
                activeIcon: Icon(Icons.camera)),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                activeIcon: Icon(Icons.person)),
          ],
        ),
        tabBuilder: (context, index) {
          switch (index) {
            case 0:
              return CupertinoTabView(builder: (context) {
                return const CupertinoPageScaffold(
                  child: pageone(),
                );
              });
            case 1:
              return CupertinoTabView(builder: (context) {
                return CupertinoPageScaffold(
                  child: Container(
                    child: const camera(),
                  ),
                );
              });
            case 2:
              return CupertinoTabView(builder: (context) {
                return CupertinoPageScaffold(
                  child: Container(
                    child: const profilepage(),
                  ),
                );
              });

            default:
              CupertinoTabView(builder: (context) {
                return CupertinoPageScaffold(
                  child: Container(
                    child: const Text("page dates "),
                  ),
                );
              });
          }
          ;
          return Container();
        });
  }
}
