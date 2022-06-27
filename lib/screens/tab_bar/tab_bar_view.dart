import 'package:flutter/material.dart';
import 'package:ows_figmadesign1/screens/bottomnav/widgets/custom_container.dart';

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
        drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.amber,
                ), //BoxDecoration
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.amber),
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
                onPressed: () {},
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 6.0),
              child: IconButton(
                icon: Icon(
                  Icons.refresh,
                  size: 24.0,
                  color: Colors.black54,
                ),
                onPressed: () {},
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
            indicatorColor: Colors.amber,
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
                style: TextStyle(fontSize: 18),
              )),
              Tab(
                  child: Text(
                'Spin',
                style: TextStyle(fontSize: 18),
              )),
              Tab(
                  child: Text(
                'Color',
                style: TextStyle(fontSize: 18),
              )),
            ],
          ),
          title: Text('Play-King-Fast'),
        ),
        body: _selectBody(),
      ),
    );
  }

  Widget _selectBody() {
    return TabBarView(controller: _tabController, children: [
      Center(
        child: Text('${_tabController.index}'),
      ),
      Center(
        child: Text('${_tabController.index}'),
      ),
      Center(
        child: Text('${_tabController.index}'),
      ),
    ]);
  }
}
