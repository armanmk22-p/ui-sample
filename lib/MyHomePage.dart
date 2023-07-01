import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final pages = [
    1,
    2,
    3,
    4,
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu,
                    size: 30.0,
                    color: Colors.white70,
                  ),
                  tooltip: 'Menu',
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.white70,
                  ),
                  tooltip: 'Cart',
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Card(
                      //This controls whether the Card widget with all its child widget will be seen as a single widget or not.
                      semanticContainer: true,
                      //This property decides whether the content inside the Card will be clipped or not.
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: Colors.transparent,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                      ),
                      child: Image.asset(
                        "assets/images/img.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 90, right: 20, left: 20),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 230,
              child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: Colors.transparent,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15.0),
                  ),
                ),
                child: Image.asset(
                  "assets/images/campaigns.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 330,
              left: 30,
              right: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Fruits',
                  style: TextStyle(
                      color: Colors.white70,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w700,
                      fontSize: 20.0),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Row(
                    children: [
                      Text(
                        'View All',
                        style: TextStyle(
                            color: Color(0xFFF1C950),
                            fontFamily: "Inter",
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.arrow_forward,
                        color: Color(0xFFF1C950),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Row(
               // mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 380,
                      left: 20,
                     // right: 5,
                    ),
                    child: SizedBox(
                      width: 175,
                      height: 300,
                      child: Card(
                        color: const Color(0xFF2C2C2C),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(75.0),
                                topRight: Radius.circular(75.0),
                                bottomLeft: Radius.circular(30.0),
                                bottomRight: Radius.circular(30.0))),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: Column(
                            children: [
                              SizedBox(
                                width: 110,
                                height: 110,
                                child: Image.asset(
                                    "assets/images/fruits/blueberry.png"),
                              ),
                              const Divider(
                                height: 15,
                                thickness: 1,
                                color: Colors.white24,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                  top: 20.0,
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Fruit",
                                    style: TextStyle(
                                      color: Color(0xFFF1C950),
                                      fontFamily: "Inter",
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                      letterSpacing: 5.0,
                                    ),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 10.0),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Apple",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontFamily: "Inter",
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 15.0, left: 15.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "\$15.0",
                                      style: TextStyle(
                                          color: Color(0xFFF1C950),
                                          fontSize: 20,
                                          fontFamily: "Inter",
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 5.0),
                                      child: Text(
                                        "per Kg",
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.grey),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 380,
                      left: 20,
                     // right: 20,
                    ),
                    child: SizedBox(
                      width: 175,
                      height: 300,
                      child: Card(
                        color: const Color(0xFF2C2C2C),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(75.0),
                                topRight: Radius.circular(75.0),
                                bottomLeft: Radius.circular(30.0),
                                bottomRight: Radius.circular(30.0))),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: Column(
                            children: [
                              SizedBox(
                                width: 110,
                                height: 110,
                                child: Image.asset(
                                    "assets/images/fruits/banana.png"),
                              ),
                              const Divider(
                                height: 15,
                                thickness: 1,
                                color: Colors.white24,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                  top: 20.0,
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Fruit",
                                    style: TextStyle(
                                      color: Color(0xFFF1C950),
                                      fontFamily: "Inter",
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                      letterSpacing: 5.0,
                                    ),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 10.0),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Banana",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontFamily: "Inter",
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 15.0, left: 15.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "\$15.0",
                                      style: TextStyle(
                                          color: Color(0xFFF1C950),
                                          fontSize: 20,
                                          fontFamily: "Inter",
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 5.0),
                                      child: Text(
                                        "per Kg",
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.grey),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 380,
                      left: 20,
                    //  right: 20,
                    ),
                    child: SizedBox(
                      width: 175,
                      height: 300,
                      child: Card(
                        color: const Color(0xFF2C2C2C),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(75.0),
                                topRight: Radius.circular(75.0),
                                bottomLeft: Radius.circular(30.0),
                                bottomRight: Radius.circular(30.0))),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: Column(
                            children: [
                              SizedBox(
                                width: 110,
                                height: 110,
                                child: Image.asset(
                                    "assets/images/fruits/cherry.png"),
                              ),
                              const Divider(
                                height: 15,
                                thickness: 1,
                                color: Colors.white24,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                  top: 20.0,
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Fruit",
                                    style: TextStyle(
                                      color: Color(0xFFF1C950),
                                      fontFamily: "Inter",
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                      letterSpacing: 5.0,
                                    ),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 10.0),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Cherry",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontFamily: "Inter",
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 15.0, left: 15.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "\$18.0",
                                      style: TextStyle(
                                          color: Color(0xFFF1C950),
                                          fontSize: 20,
                                          fontFamily: "Inter",
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 5.0),
                                      child: Text(
                                        "per Kg",
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.grey),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 380,
                      left: 20,
                     // right: 20,
                    ),
                    child: SizedBox(
                      width: 175,
                      height: 300,
                      child: Card(
                        color: const Color(0xFF2C2C2C),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(75.0),
                                topRight: Radius.circular(75.0),
                                bottomLeft: Radius.circular(30.0),
                                bottomRight: Radius.circular(30.0))),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: Column(
                            children: [
                              SizedBox(
                                width: 110,
                                height: 110,
                                child: Image.asset(
                                    "assets/images/fruits/grapes.png"),
                              ),
                              const Divider(
                                height: 15,
                                thickness: 1,
                                color: Colors.white24,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                  top: 20.0,
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Fruit",
                                    style: TextStyle(
                                      color: Color(0xFFF1C950),
                                      fontFamily: "Inter",
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                      letterSpacing: 5.0,
                                    ),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 10.0),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Grapes",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontFamily: "Inter",
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 15.0, left: 15.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "\$25.0",
                                      style: TextStyle(
                                          color: Color(0xFFF1C950),
                                          fontSize: 20,
                                          fontFamily: "Inter",
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 5.0),
                                      child: Text(
                                        "per Kg",
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.grey),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Theme( data: ThemeData(
       // make BottomNavigationBarItem not clickable and disable tap splash effect
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ), child: Padding(
        padding: const EdgeInsets.only( left: 20, right: 20,top: 16,bottom: 8),
        child: SizedBox(
          height: 90,
          width: MediaQuery.of(context).size.width,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(15),),
            child: BottomNavigationBar(
                backgroundColor: const Color(0xFF2C2C2C),
                selectedItemColor: const Color(0xFFF1C950) ,
                unselectedItemColor:  Colors.white24,
                type: BottomNavigationBarType.fixed,
                //if we don't add label they will be note center of container,so need to set false
                showSelectedLabels: false,
                showUnselectedLabels: false,
                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
                elevation: 0,
                iconSize: 35,
                items:const [
                  BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: ''),
                  BottomNavigationBarItem(icon: Icon(Icons.search),label: ''),
                  BottomNavigationBarItem(icon: Icon(Icons.email_outlined),label: ''),
                  BottomNavigationBarItem(icon: Icon(Icons.settings),label: ''),

                ]),
          ),
        ),
      ),),
    );
  }
}
