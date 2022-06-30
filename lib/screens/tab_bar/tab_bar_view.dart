import 'package:flutter/material.dart';
import 'package:ows_figmadesign1/screens/bootom_sheet.dart';
import 'package:ows_figmadesign1/screens/bottomnav/widgets/custom_container.dart';
import 'package:ows_figmadesign1/screens/satta_screen/satta_screen.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({Key? key}) : super(key: key);

  @override
  _CustomTabBarState createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar>
    with TickerProviderStateMixin {
  static const List<Tab> myTabs = <Tab>[
    Tab(child: Text('Satta')),
    Tab(
      child: Text('Spin'),
    ),
    Tab(
      child: Text('Color'),
    )
  ];

  late TabController _tabController;

  void _modalMenu() {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return BottomSheetMenu();
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(backgroundColor: Colors.white,
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                ), //BoxDecoration
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.deepPurple),
                  accountName: Text(
                    "Abhishek Mishra",
                    style: TextStyle(fontSize: 18),
                  ),
                  accountEmail: Text("abhishekm977@gmail.com"),
                  currentAccountPictureSize: Size.square(50),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 165, 255, 137),
                    child: Text(
                      "A",
                      style: TextStyle(fontSize: 30.0, color: Colors.blue),
                    ), //Text
                  ), //circleAvatar
                ), //UserAccountDrawerHeader
              ), //DrawerHeader
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text(' My Profile '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.book),
                title: const Text(' My Records '),
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
        ), //Deawer
        appBar: AppBar(
          actions: <Widget>[
            Container(
              child: IconButton(
                icon: Icon(
                  Icons.settings,
                  size: 24.0,
                  color: Colors.white,
                ),
                onPressed: () {
                  _modalMenu();
                },
              ),
            ),
          ],
          bottom: TabBar(
            labelStyle: TextStyle(
              fontSize: 13.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            unselectedLabelColor: Colors.black54,
            labelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 4,
            indicatorColor: Colors.white,
            // indicator: BoxDecoration(
            //     borderRadius: BorderRadius.only(
            //         topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            //     color: Colors.white70),
            // isScrollable: true,
            controller: _tabController,
            tabs: [
              Tab(
                  child: Text(
                'Satta',
                style: TextStyle(fontSize: 18,color: Colors.white),
              )),
              Tab(
                  child: Text(
                'Spin',
                style: TextStyle(fontSize: 18,color: Colors.white),
              )),
              Tab(
                  child: Text(
                'Color',
                style: TextStyle(fontSize: 18,color: Colors.white),
              )),
            ],
          ),
          title: Text('Play King Fast'),
          centerTitle: true,
        ),
        body: _selectBody(),
      ),
    );
  }

  Widget _selectBody() {
    return TabBarView(controller: _tabController, children: [
      SattaScreen(),
      Center(
        child: Text('${_tabController.index}'),
      ),
      Center(
        child: Text('${_tabController.index}'),
      ),
    ]);
  }
}
