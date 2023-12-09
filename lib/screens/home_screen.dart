import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:untitled/screens/get_started.dart';
import 'package:untitled/firebase_funtions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var currentUser = Data(personName: 'null', category: 'null', qualification: 'null', location: 'null');

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              Firebase.signOUT();
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => GetStartedScreen()));
            },
            child: Text("Sign out of ${FirebaseAuth.instance.currentUser!.email}"),
          ),
          Container(
            height: screenHeight * 0.5,
            width: screenWidth,
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(
                  height: screenHeight * 0.01,
                  width: screenWidth,
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
                        Text(
                          currentUser.personName,
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                        Row(
                          children: [
                            Text(
                              "500",
                              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(width: 5,),
                            Text("Connects", style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400)),
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
                            Text("100", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700)),
                            SizedBox(width: 5,),
                            Text("Followers", style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400)),
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
                          width: screenWidth,
                        ),
                        SizedBox(height: 5,),
                        Text(currentUser.category, style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400)),
                        SizedBox(height: 5,),
                        Text(currentUser.qualification, style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400)),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.location_on_outlined, size: 10,),
                            SizedBox(height: 5,),
                            Text(currentUser.location, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.chat_outlined, size: 24,),
                                    SizedBox(width: 5,),
                                    Text("Chat", style: TextStyle(fontSize: 14)),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(FontAwesomeIcons.bolt, size: 24,),
                                    SizedBox(width: 5,),
                                    Text("Connect", style: TextStyle(fontSize: 14)),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Icon(Icons.settings),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: screenWidth,),
                            Text("About", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700)),
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
              Text("Fortue", style: TextStyle(fontSize: 15)),
              Text("Posts", style: TextStyle(fontSize: 15)),
              Text("Group", style: TextStyle(fontSize: 15)),
              Text("Reactions", style: TextStyle(fontSize: 15)),
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
            icon: Icon(Icons.home_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lightbulb_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note_alt_outlined),
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
    );
  }

  Future<void> fetchData() async {
    try {
      // Get the current user
      User? user = FirebaseAuth.instance.currentUser;

      if (user != null) {
        // Retrieve the email of the current user
        final userEmail = user.email;

        // Reference to the Firestore collection and document
        final userDocRef = FirebaseFirestore.instance.collection('users').doc(user.uid);

        // Fetch data from Firestore
        final snapshot = await userDocRef.get();

        if (snapshot.exists) {
          // Data exists, update the 'currentUser' object with fetched data
          setState(() {
            currentUser = Data(
              personName: snapshot.get('name'),
              category: snapshot.get('category'),
              qualification: snapshot.get('qualification'),
              location: snapshot.get('location'),
            );
          });

          print("Successfully fetched data ...");
          print("Printing currentUser object : ${currentUser.personName}");
        } else {
          print('Document does not exist');
        }
      } else {
        print('User not signed in');
      }
    } catch (e) {
      print('Error fetching data: $e');
    }
  }
}

class Data {
  String personName;
  String category;
  String qualification;
  String location;

  Data({
    required this.personName,
    required this.category,
    required this.qualification,
    required this.location,
  });
}
