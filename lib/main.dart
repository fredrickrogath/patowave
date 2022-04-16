import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:patowave/Pages/all.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

final darkNotifier = ValueNotifier<bool>(false);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
        valueListenable: darkNotifier,
        builder: (BuildContext context, bool isDark, Widget? child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
            theme: ThemeData(primaryColor: Colors.blue),
            darkTheme: ThemeData.dark(),
            home: const MyHomePage(
              title: 'Happy Shop',
            ),
          );
        });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _showAppbar = true; //this is to show app bar
  final ScrollController _scrollBottomBarController =
      ScrollController(); // set controller on scrolling
  bool isScrollingDown = false;
  bool _show = true;
  double bottomBarHeight = 50; // set bottom bar height
  // final double _bottomBarOffset = 0;
  // final double _iconSize = 20;

  // int _selectedIndex = 0;
  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.w100);

  // static const List<Widget> _widgetOptions = <Widget>[
  //   Text(
  //     'Index 0: Home',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 1: Business',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 2: School',
  //     style: optionStyle,
  //   ),
  // ];

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  void showBottomBar() {
    setState(() {
      _show = true;
    });
  }

  void hideBottomBar() {
    setState(() {
      _show = false;
    });
  }

  void myScroll() async {
    _scrollBottomBarController.addListener(() {
      if (_scrollBottomBarController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (!isScrollingDown) {
          isScrollingDown = true;
          _showAppbar = false;
          hideBottomBar();
        }
      }
      if (_scrollBottomBarController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (isScrollingDown) {
          isScrollingDown = false;
          _showAppbar = true;
          showBottomBar();
        }
      }
    });
  }

  @override
  void initState() {
    super.initState();
    myScroll();
  }

  @override
  void dispose() {
    _scrollBottomBarController.removeListener(() {});
    darkNotifier.dispose();
    super.dispose();
  }

  Widget body() {
    return ListView.builder(
        // the number of items in the list
        itemCount: 200,
        controller: _scrollBottomBarController,

        // display each item of the product list
        itemBuilder: (context, index) {
          return Card(
              // In many cases, the key isn't mandatory
              key: UniqueKey(),
              child: Padding(
                  padding: const EdgeInsets.all(10), child: Text('$index')));
        });
  }

  @override
  Widget build(BuildContext context) {
    bool isDark = darkNotifier.value;
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: _showAppbar
            ? AppBar(
                toolbarHeight: 80.0,
                backgroundColor: const Color(0xFF24564F),
                // centerTitle: true,
                leading: const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/logo/logo2.jpg'),
                  ),
                ),
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    // title:
                    //  Text('Title',
                    //     style: TextStyle(
                    //       color: Colors.white,
                    //       fontSize: 16.0,
                    //     )),
                    background: Opacity(
                      opacity: 0.2,
                      child: Image.asset(
                        'assets/logo/logo2.jpg',
                        fit: BoxFit.cover,
                      ),
                    )),
                title: Text(
                  widget.title,
                  style: const TextStyle(fontSize: 16.0),
                ),
                bottom: PreferredSize(
                    child: Opacity(
                      opacity: 0.9,
                      child: TabBar(
                          isScrollable: true,
                          unselectedLabelColor: Colors.white.withOpacity(0.3),
                          indicatorColor: Colors.white,
                          tabs: const [
                            Tab(
                              child: Text('All'),
                            ),
                            Tab(
                              child: Text('Products'),
                            ),
                            Tab(
                              child: Text('Services'),
                            ),
                            Tab(
                              child: Text('Insights'),
                            ),
                            Tab(
                              child: Text('Report'),
                            ),
                          ]),
                    ),
                    preferredSize: const Size.fromHeight(30.0)),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: IconButton(
                      // icon: FaIcon(FontAwesomeIcons.mode_night_outlined),
                      icon: Icon(isDark
                          ? Icons.wb_sunny_outlined
                          : Icons.mode_night_outlined),
                      onPressed: () {
                        isDark = !isDark;
                        darkNotifier.value = isDark;
                        setState(() {});
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          CupertinoIcons.bell,
                        ),
                        Icon(
                          CupertinoIcons.circle_fill,
                          color: Color(0xFFC1292E),
                          size: 10.0,
                        ),
                      ],
                    ),
                  ),
                ],
              )
            : PreferredSize(
                child: Container(),
                preferredSize: const Size(0.0, 0.0),
              ),
        body: TabBarView(
          physics: const AlwaysScrollableScrollPhysics(
              parent: BouncingScrollPhysics()),
          children: [
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 55.0),
                  child: ListView.builder(
                      controller: _scrollBottomBarController,
                      padding: const EdgeInsets.all(0.0),
                      physics: const AlwaysScrollableScrollPhysics(
                          parent: BouncingScrollPhysics()),
                      shrinkWrap: true,
                      cacheExtent: 50.0,
                      itemCount: 200,
                      itemBuilder: (context, index) {
                        return All(index: index);
                      }),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 1.4,
                        height: 50,
                        decoration: BoxDecoration(
                            // color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                          child: TextField(
                            decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.search),
                                suffixIcon: IconButton(
                                  icon: const Icon(Icons.clear),
                                  onPressed: () {
                                    /* Clear the search field */
                                  },
                                ),
                                hintText: 'Search...',
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(CupertinoIcons.add),
                        color: Colors.grey,
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(CupertinoIcons.barcode_viewfinder),
                        color: Colors.grey,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Center(
              child: Text('Tab 2'),
            ),
            const Center(
              child: Text('Tab 3'),
            ),
            const Center(
              child: Text('Tab 4'),
            ),
            const Center(
              child: Text('Tab 5'),
            ),
          ],
        ),
        floatingActionButton: _show
            ? SizedBox(
                height: 50.0,
                child: FloatingActionButton(
                  onPressed: () {},
                  child: const Icon(Icons.add),
                  elevation: 4.0,
                  backgroundColor: const Color(0xFF337A6F),
                ),
              )
            : const SizedBox(height: 0.0),
        bottomNavigationBar: BottomAppBar(
          child: _show
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: IconButton(
                        icon: const Icon(Icons.home),
                        onPressed: () {},
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                        icon: const Icon(Icons.show_chart),
                        onPressed: () {},
                      ),
                    ),
                    const Expanded(child: Text('')),
                    Expanded(
                      child: IconButton(
                        icon: const Icon(Icons.tab),
                        onPressed: () {},
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                        icon: const Icon(Icons.settings),
                        onPressed: () {},
                      ),
                    ),
                  ],
                )
              : const SizedBox(height: 0.0),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  // Widget allTab() => SingleChildScrollView(
  //   child: Column(children: [
  //     // Container(
  //     //   width: double.infinity,
  //     //   height: 40,
  //     //   decoration: BoxDecoration(
  //     //       color: Colors.white,
  //     //       borderRadius: BorderRadius.circular(5)),
  //     //   child: Center(
  //     //     child: TextField(
  //     //       decoration: InputDecoration(
  //     //           prefixIcon: Icon(Icons.search),
  //     //           suffixIcon: IconButton(
  //     //             icon: Icon(Icons.clear),
  //     //             onPressed: () {
  //     //               /* Clear the search field */
  //     //             },
  //     //           ),
  //     //           hintText: 'Search...',
  //     //           border: InputBorder.none),
  //     //     ),
  //     //   ),
  //     // ),
  //     ListView.builder(
  //         controller: _scrollBottomBarController,
  //         padding: const EdgeInsets.all(0.0),
  //         physics: const AlwaysScrollableScrollPhysics(
  //             parent: BouncingScrollPhysics()),
  //         shrinkWrap: true,
  //         cacheExtent: 50.0,
  //         itemCount: 100,
  //         itemBuilder: (context, index) {
  //           return Text('$index');
  //         }),
  //   ]),
  // );
}
