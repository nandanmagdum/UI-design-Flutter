import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double ScreenHeight = MediaQuery.of(context).size.height;
    double ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: ScreenHeight*0.44,
            width: ScreenWidth,
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(
                  height: ScreenHeight * 0.05,
                  width: ScreenWidth,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.account_circle_outlined,
                      size: 84,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("John Doe", textAlign: TextAlign.start,style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),),
                        Row(
                          children: [
                            Text("500", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),),
                            SizedBox(width: 5,),
                            Text("Connects", style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),),
                          ],
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(Icons.security, size: 15,),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text("100", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),),
                            SizedBox(width: 5,),
                            Text("Followers", style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),),
                          ],
                        ),
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
                          width: ScreenWidth,
                        ),
                        SizedBox(height: 5,),
                        Text("Technology", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),),
                        SizedBox(height: 5,),
                        Text("Graduate AKTU", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [Icon(Icons.location_on_outlined, size: 10,),SizedBox(height: 5,), Text("Delhi", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),)],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(child: ElevatedButton(onPressed: (){}, child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [Icon(Icons.chat_outlined, size: 24,), SizedBox(width: 5,), Text("Chat", style: TextStyle(fontSize: 14),)],))),
                            SizedBox(width: 30,),
                            Expanded(child: ElevatedButton(onPressed: (){}, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Icon(FontAwesomeIcons.bolt, size: 24,),  SizedBox(width: 5,),Text("Connect", style: TextStyle(fontSize: 14))],))),
                            SizedBox(width: 30,),
                            Icon(Icons.settings),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: ScreenWidth,),
                            Text("About", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),),
                            SizedBox(height: 10,),
                            Text("Lorem ipsum sit amet consectetur adipiscing as asdfe eilt Ut et"),
                            SizedBox(height: 10,),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Fortue", style: TextStyle(fontSize: 15),),
              Text("Posts", style: TextStyle(fontSize: 15),),
              Text("Group", style: TextStyle(fontSize: 15),),
              Text("Reactions", style: TextStyle(fontSize: 15),)
            ],
          ),
          Divider(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 0,
        iconSize: 30,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.lightbulb_outlined), label: '',),
          BottomNavigationBarItem(
              icon: Icon(Icons.note_alt_outlined), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none_outlined), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: ''),
        ],
      ),
    );
  }

  Container customContainer(Color color) {
    return Container(
      color: color,
    );
  }
}
