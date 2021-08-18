import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({
    Key? key,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
            // padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
            height: 50,

            // width: 800,
            child: TabBar(
              controller: _tabController,
              indicator: ShapeDecoration(
                color: Colors.lime,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
              isScrollable: true,
              tabs: [
                Container(
                  width: 60,
                  child: Tab(
                    icon: Column(
                      children: [
                        Icon(
                          Icons.category,
                          color: Colors.blue,
                        ),
                        Text('Cart')
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 60,
                  child: Tab(
                    icon: Column(
                      children: [
                        Icon(
                          Icons.queue,
                          color: Colors.blue,
                        ),
                        Text('Queue')
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 60,
                  child: Tab(
                    icon: Column(
                      children: [
                        Icon(
                          Icons.directions_bike,
                          color: Colors.blue,
                        ),
                        Text('Bike')
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 60,
                  child: Tab(
                    icon: Column(
                      children: [
                        Icon(
                          Icons.category,
                          color: Colors.blue,
                        ),
                        Text('category')
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 60,
                  child: Tab(
                    icon: Column(
                      children: [
                        Icon(
                          Icons.title,
                          color: Colors.blue,
                        ),
                        Text('Title')
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 60,
                  child: Tab(
                    icon: Column(
                      children: [
                        Icon(
                          Icons.shopping_basket,
                          color: Colors.blue,
                        ),
                        Text('Bag ')
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
