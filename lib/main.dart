import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'Chatpage.dart';
import 'HomePage.dart';
import 'Hubpage.dart';
import 'LearnPage.dart';
import 'ProfilePage.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: BanaoFlutter()));
}

class BanaoFlutter extends StatefulWidget {
  State<BanaoFlutter> createState() => _BanaoFlutter();
}

class _BanaoFlutter extends State<BanaoFlutter> {
  final PersistentTabController _controller = PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          drawer: Drawer(),
          appBar: AppBar(
            leading: Builder(builder: (BuildContext context) {
              return IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                    },
                  icon: ImageIcon(AssetImage("assets/icons/drawe.png"))
              );
            },),
            iconTheme: IconThemeData(color: Colors.grey),
            backgroundColor: Color.fromRGBO(238,243,253,1),
            elevation: 0,
            actions: <Widget>[
              IconButton(icon: ImageIcon(AssetImage("assets/icons/chat.png")), onPressed: () {}),
              IconButton(icon: ImageIcon(AssetImage("assets/icons/notification.png")), onPressed: () {})
            ],
          ),
          body: PersistentTabView(
            context,
            controller: _controller,
            screens: const [
              HomePage(),
              LearnPage(),
              HubPage(),
              ChatPage(),
              ProfilePage(),
            ],
            items: _navBarsItems(),
            navBarStyle: NavBarStyle.style3,
          ),
        );
  }
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: const Icon(CupertinoIcons.home),
      title: ("Home"),
      activeColorPrimary: Color.fromRGBO(89, 139, 237, 1),
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(CupertinoIcons.book),
      title: ("Learn"),
      activeColorPrimary: Color.fromRGBO(89, 139, 237, 1),
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(CupertinoIcons.rectangle_grid_2x2),
      title: ("Hub"),
      activeColorPrimary: Color.fromRGBO(89, 139, 237, 1),
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(CupertinoIcons.chat_bubble),
      title: ("Chat"),
      activeColorPrimary: Color.fromRGBO(89, 139, 237, 1),
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(CupertinoIcons.profile_circled),
      title: ("Profile"),
      activeColorPrimary: Color.fromRGBO(89, 139, 237, 1),
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
  ];
}