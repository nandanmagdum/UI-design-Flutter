import 'package:flutter/material.dart';
import 'package:untitled/screens/constants.dart';
import 'package:untitled/screens/login.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Constants K = Constants();
    double ScreenHeight = MediaQuery.of(context).size.height;
    double ScreenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(20, 20, 20, 1),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(right: 15, left: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.width*0.05,),
                  Text("APP-1",
                      style: TextStyle(
                          fontSize: 20, color: Colors.white)),
                  SizedBox(height: MediaQuery.of(context).size.width*0.07,),
                  Image(image: AssetImage('assets/iphone_img.png',), height: ScreenHeight*0.5, width: ScreenWidth*0.9,),
                  Text(
                    "Effortlessly Manage Your Tasks and Boost Productivity",
                    style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: ScreenHeight*0.01,),
                  Text(
                    "The ultimate task management app designed to streamline your workflow and supercharge your productivity",
                    style: TextStyle(fontSize: 14,color: Color.fromRGBO(105, 105, 105, 1)),
                  ),
                  SizedBox(height: ScreenHeight*0.01,),
                  Container(
                    padding: EdgeInsets.only(top: ScreenHeight*0.01, bottom:ScreenHeight*0.01 ),
                    child: Row(
                      children: [
                        Expanded(child: ElevatedButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()));
                        }, child: Container(margin:EdgeInsets.only(top: 2, bottom: 2) ,child: Text("Get Started", style: TextStyle(fontSize: 16),)), style: ElevatedButton.styleFrom(fixedSize: Size.fromHeight(48),backgroundColor: Color.fromRGBO(255, 255, 255, 0.1), foregroundColor: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),)),
                      ],
                    ),
                  ),
                  SizedBox(height: ScreenHeight*0.01,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
