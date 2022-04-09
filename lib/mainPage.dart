import 'package:flutter/material.dart';
import 'package:wegii_2/ownProducts.dart';

class MaibPage extends StatefulWidget {
  const MaibPage({Key? key}) : super(key: key);

  @override
  State<MaibPage> createState() => _MaibPageState();
}

class _MaibPageState extends State<MaibPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.format_align_left_sharp),
          ),
          title: Text("Browse"),

          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search)),
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
          ],
        ),
        body: Center(

          child: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            controller: _tabController,
            children: [
              TopTabBar(),
              OwnProducts(),
              Text('3'),
              Text('4'),
              Text('5'),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            color: Colors.orange,

          ),


          child: TabBar(
            indicator: UnderlineTabIndicator(borderSide: BorderSide(width: 0)),
            unselectedLabelColor: Colors.white60,
            labelColor: Colors.white,
            controller: _tabController,
            tabs: [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.home),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TopTabBar extends StatefulWidget {
  const TopTabBar({Key? key}) : super(key: key);

  @override
  State<TopTabBar> createState() => _TopTabBarState();
}

class _TopTabBarState extends State<TopTabBar> with SingleTickerProviderStateMixin{

  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight:  Radius.circular(10)),
            color: Colors.orange,
          ),

          child: TabBar(

            indicatorColor: Colors.white,

            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 4,

            unselectedLabelColor: Colors.white60,
            labelColor: Colors.white,
            controller: _tabController,
            tabs: [
              Tab(text: 'marketPlace',),
              Tab(text: 'Your Products',),
            ],
          ),
        ),
      ),
    );
  }
}

