import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final borderShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(50),
    side: BorderSide(color: Colors.white, width: 1),
  );

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: screenHeight * 0.41,
              width: screenWidth,
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  SizedBox(
                    height: screenHeight * 0.01,
                    width: screenWidth,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.account_circle_outlined,
                        size: 100,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "John Doe",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                width: screenWidth * 0.1,
                              ),
                              Icon(Icons.verified_user_rounded),
                            ],
                          ),
                          SizedBox(
                            height: screenHeight * 0.01,
                          ),
                          Row(
                            children: [
                              Text(
                                "500",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w900),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text("Connects",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400)),
                              SizedBox(
                                width: screenWidth * 0.1,
                              ),
                              Text(
                                "100",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w900),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text("Followers",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400)),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: screenWidth,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Technology",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400)),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Graduate AKTU",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400)),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                size: 10,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Delhi",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400)),
                            ],
                          ),
                          SizedBox(
                            height: screenHeight * 0.01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 140,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all(
                                          borderShape),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Color(0xFF2b2b2b))),
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.chat_outlined,
                                        color: Color(0xFFf2f2f2),
                                        size: 24,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text("Chat",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Color(0xFFf2f2f2))),
                                    ],
                                  ),
                                ),
                              ),
                              // SizedBox(
                              //   width: 10,
                              // ),
                              Container(
                                width: 140,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all(
                                          borderShape),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Color(0xFF2b2b2b))),
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        // FontAwesomeIcons.bolt,
                                        Icons.bolt_outlined,
                                        color: Color(0xFFf2f2f2),
                                        size: 28,
                                      ),
                                      // SizedBox(
                                      //   width: 5,
                                      // ),
                                      Text("Connect",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Color(0xFFf2f2f2))),
                                    ],
                                  ),
                                ),
                              ),
                              // SizedBox(
                              //   width: 10,
                              // ),
                              Icon(
                                FluentIcons.settings_16_regular,
                                size: 30,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: screenWidth,
                              ),
                              Text("About",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700)),
                              Text(
                                "Lorem ipsum sit amet consectetur adipiscing as eilt Ut et",
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 100,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    child: TabBar(
                      controller: _tabController,
                      tabs: [
                        Tab(
                          text: "Fortue",
                        ),
                        Tab(
                          text: "Posts",
                        ),
                        Tab(
                          text: "Group",
                        ),
                        Tab(
                          text: "Reactions",
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          Center(child: Text('Content for Fortue')),
                          Center(child: Text('Content for Posts')),
                          Center(child: Text('Content for Group')),
                          Center(child: Text('Content for Reactions')),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
          selectedFontSize: 0,
          iconSize: 30,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              // icon: Icon(Icons.home_filled),
              icon: Icon(FluentIcons.home_12_regular),

              label: '',
            ),
            BottomNavigationBarItem(
              // icon: Icon(Icons.lightbulb),
              icon: Icon(FluentIcons.lightbulb_16_regular),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.note_alt_outlined),
              // icon: Icon(FluentIcons.note_edit_20_regular),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
