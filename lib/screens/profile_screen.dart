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
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final firstContainerHeight = screenHeight * 0.42;
    final firstContainerwidth = screenWidth;
    final secondContainer = screenHeight * 0.45;
    final containerWidth = screenWidth * 0.85;

    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                height: firstContainerHeight,
                width: screenWidth,
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    SizedBox(
                      height: firstContainerHeight * 0.04,
                      width: screenWidth,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.account_circle_outlined,
                          size: screenWidth * 0.25,
                        ),
                        SizedBox(width: screenWidth * 0.07),
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
                                      fontSize: screenWidth * 0.07,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  width: screenWidth * 0.1,
                                ),
                                Icon(
                                  Icons.verified_user_rounded,
                                  size: screenWidth * 0.06,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: firstContainerHeight * 0.01,
                            ),
                            Row(
                              children: [
                                Text(
                                  "500",
                                  style: TextStyle(
                                      fontSize: screenWidth * 0.04,
                                      fontWeight: FontWeight.w900),
                                ),
                                SizedBox(
                                  width: screenWidth * 0.01,
                                ),
                                Text("Connects",
                                    style: TextStyle(
                                        fontSize: screenWidth * 0.03,
                                        fontWeight: FontWeight.w400)),
                                SizedBox(
                                  width: screenWidth * 0.03,
                                ),
                                Text(
                                  "100",
                                  style: TextStyle(
                                      fontSize: screenWidth * 0.04,
                                      fontWeight: FontWeight.w900),
                                ),
                                SizedBox(
                                  width: screenWidth * 0.01,
                                ),
                                Text("Followers",
                                    style: TextStyle(
                                        fontSize: screenWidth * 0.03,
                                        fontWeight: FontWeight.w400)),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: screenWidth * 0.03, right: screenWidth * 0.03),
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
                                  fontSize: screenWidth * 0.03,
                                  fontWeight: FontWeight.w400)),
                          SizedBox(
                            height: screenWidth * 0.01,
                          ),
                          Text("Graduate AKTU",
                              style: TextStyle(
                                  fontSize: screenWidth * 0.03,
                                  fontWeight: FontWeight.w400)),
                          SizedBox(
                            height: screenWidth * 0.01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                size: screenWidth * 0.04,
                              ),
                              SizedBox(
                                height: screenWidth * 0.03,
                              ),
                              Text("Delhi",
                                  style: TextStyle(
                                      fontSize: screenWidth * 0.03,
                                      fontWeight: FontWeight.w400)),
                            ],
                          ),
                          SizedBox(
                            height: firstContainerHeight * 0.04,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width: firstContainerwidth * 0.33,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all(
                                          borderShape),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Color(0xFF2b2b2b))),
                                  onPressed: () {},
                                  child: const Row(
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
                              SizedBox(
                                // width: firstContainerwidth * 0.36,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all(
                                          borderShape),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Color(0xFF2b2b2b))),
                                  onPressed: () {},
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.bolt_outlined,
                                        color: Color(0xFFf2f2f2),
                                        size: 28,
                                      ),
                                      Text("Connect",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Color(0xFFf2f2f2))),
                                    ],
                                  ),
                                ),
                              ),
                              Icon(
                                FluentIcons.settings_16_regular,
                                size: firstContainerwidth * 0.1,
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
                  ],
                ),
              ),
              Container(
                height: secondContainer,
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
      ),
    );
  }
}
