import 'package:flutter/material.dart';
import 'package:monastir_tourism/screens/Places/placesScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4);
    _tabController.addListener(() {
      setState(() {
        _selectedIndex = _tabController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              centerTitle: true,
              elevation: 0,
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(50),
                child: Container(
                  height: 50,
                  child: TabBar(
                    controller: _tabController,
                    indicatorColor: Colors.transparent,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(
                        child: Container(
                          height: 50,
                          alignment: Alignment.center,
                          child: Stack(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Hotels',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600, fontSize: 20),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: _selectedIndex == 0 ? Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle,
                                  ),
                                ): SizedBox(),
                              )
                            ],
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          height: 50,
                          alignment: Alignment.center,
                          child: Stack(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Places',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600, fontSize: 20),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: _selectedIndex == 1 ? Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle,
                                  ),
                                ): SizedBox(),
                              )
                            ],
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          height: 50,
                          alignment: Alignment.center,
                          child: Stack(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Map',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600, fontSize: 20),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: _selectedIndex == 2 ? Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle,
                                  ),
                                ): SizedBox(),
                              )
                            ],
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          height: 50,
                          alignment: Alignment.center,
                          child: Stack(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Taxi',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600, fontSize: 20),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: _selectedIndex == 3 ? Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle,
                                  ),
                                ): SizedBox(),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              title: Text('Tunisia Tourism',style: TextStyle(color: Colors.black),),
            ),
            body: TabBarView(controller: _tabController, children: [
              // This is where you would put your code for the "Hotels" tab
              Center(child: Text('Hotels')),
              // This is where you would put your code for the "Places" tab
              Center(child: PlacesScreen()),
              Center(child: Text('Map')),
              Center(child: Text('Taxi')),
            ])));
  }
}
