import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/screens/profile_screen.dart';
import 'constants.dart';
import 'package:untitled/firebase_funtions.dart';

class SecondPage extends StatefulWidget {
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  Color con_color = Colors.red;
  int _page = 0;
  bool _isObscure = true;
  bool _isObscure2 = true;
  bool _remindMe = false;
  bool _forgotPassword = false;
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmPassword = TextEditingController();

  TextEditingController _nameOfPerson = TextEditingController();
  TextEditingController _category = TextEditingController();
  TextEditingController _qualifications = TextEditingController();
  TextEditingController _location = TextEditingController();

  void _toggleVisibility() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }

  void _toggleVisibility2() {
    setState(() {
      _isObscure2 = !_isObscure2;
    });
  }

  Color LoginColor = Color(0xFFDADADA);
  Color RegisterColor = Color(0xA5C0C0C0);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final containerHeight = screenHeight * 0.65;

    return MaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.inter().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF141414),
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Back Arrow
                Padding(
                  padding: EdgeInsets.only(left: 30.0, top: 25),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    width: 45,
                    height: 45,
                    decoration: ShapeDecoration(
                      shape: CircleBorder(
                        side: BorderSide(width: 1, color: Color(0xFF4E4E4E)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                // Top Text
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    "Go ahead and set up your account",
                    style: TextStyle(color: Colors.white, fontSize: 35),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    "Sign in-up to enjoy  the best managing experience",
                    style: TextStyle(color: Colors.white38, fontSize: 12),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: containerHeight,
                  width: screenWidth,
                  decoration: BoxDecoration(
                    color: Color(0xFFdbdbdb),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        // buttons to change the screens
                        Container(
                          margin: EdgeInsets.only(top: 30.0),
                          height: containerHeight * 0.1,
                          width: screenWidth * 0.65,
                          decoration: ShapeDecoration(
                            color: Color(0xA5C0C0C0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _page = 0;
                                      RegisterColor = Colors.transparent;
                                      LoginColor = Color(0xFFDADADA);
                                    });
                                  },
                                  child: Container(
                                    child: Center(child: Text("Login")),
                                    height: containerHeight * 0.08,
                                    width: screenWidth * 0.3,
                                    decoration: ShapeDecoration(
                                      color: LoginColor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _page = 1;
                                      LoginColor = Colors.transparent;
                                      RegisterColor = Color(0xFFDADADA);
                                    });
                                  },
                                  child: Container(
                                    child: Center(child: Text("Register")),
                                    height: containerHeight * 0.08,
                                    width: screenWidth * 0.3,
                                    decoration: ShapeDecoration(
                                      color: RegisterColor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: containerHeight * 0.1),
                        Container(
                          // child: (_page == 1)?  LoginPage(screenHeight, screenWidth): (_page == 2)? RegisterPage(screenHeight, screenWidth): (_page == 3)? GetInfo(screenHeight, screenWidth): LoginPage(screenHeight, screenWidth),
                          child: (_page == 0)
                              ? LoginPage(containerHeight * 0.9, screenWidth)
                              : RegisterPage(screenHeight * 0.6, screenWidth),
                        ),

                        ///////////
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget LoginPage(final screenHeight, final screenWidth) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: screenHeight * 0.1,
          width: screenWidth * 0.8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: Colors.grey),
          ),
          child: TextField(
            textInputAction: TextInputAction.next,
            onChanged: (value) {
              _email.text = value;
            },
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                hintText: 'Enter your email',
                labelText: 'Email Address',
                border: InputBorder.none,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 9.0, horizontal: 10.0),
                prefixIcon: Icon(
                  Icons.email,
                  color: Color(0xFF519C6D),
                )),
          ),
        ),
        SizedBox(height: 16.0),
        Container(
          height: screenHeight * 0.1,
          width: screenWidth * 0.8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: Colors.grey),
          ),
          child: TextField(
            onChanged: (value) {
              _password.text = value;
            },
            obscureText: _isObscure,
            decoration: InputDecoration(
              hintText: 'Enter your password',
              labelText: 'Password',
              border: InputBorder.none,
              contentPadding:
                  EdgeInsets.symmetric(vertical: 9.0, horizontal: 10.0),
              prefixIcon: Icon(
                Icons.lock,
                color: Color(0xFF519C6D),
              ),
              suffixIcon: GestureDetector(
                onTap: _toggleVisibility,
                child: (_isObscure)
                    ? Icon(
                        Icons.visibility_outlined,
                        color: Color(0xFF519C6D),
                      )
                    : Icon(
                        Icons.visibility_off_outlined,
                        color: Color(0xFF519C6D),
                      ),
              ),
            ),
          ),
        ),
        SizedBox(height: 30.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Checkbox(
                  activeColor: Color(0xFF519C6D),
                  checkColor: Color.fromARGB(255, 255, 255, 255),
                  value: _remindMe,
                  onChanged: (value) {
                    setState(() {
                      _remindMe = value!;
                    });
                  },
                ),
                Text('Remind me'),
              ],
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _forgotPassword = !_forgotPassword;
                });
              },
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: screenWidth * 0.8,
          height: screenHeight * 0.1,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  Color(0xFF519C6D), // Change the background color here
            ),
            onPressed: () async {
              if (_email.text == '') {
                print(
                    "email cannot be empty, please enter valid email address");
              } else if (_password.text == '') {
                print("Password cannot be empty, please enter valid password");
              } else if (_password.text.length < 8) {
                print("Password is too short");
              }
              print(_email.text);
              print(_password.text);
              // call firebase login function
              final user = await Firebase.signIn(
                  context: context,
                  email: _email.text,
                  password: _password.text);
              if(user != null) {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              }

            },
            child: Text(
              'Login',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),

        Row(
          children: <Widget>[
            Expanded(
              child: Divider(
                indent: 20,
                color: Color(0xFF9f9f9f),
                height: 36,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'Or login with',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF9f9f9f),
                ),
              ),
            ),
            Expanded(
              child: Divider(
                endIndent: 20,
                color: Color(0xFF9f9f9f),
                height: 36,
              ),
            ),
          ],
        ),
        /////
        SizedBox(
          height: 10,
        ),

        Container(
          width: screenWidth * 0.5,
          padding: EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            border: Border.all(color: Colors.grey),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(
                'https://w7.pngwing.com/pngs/989/129/png-transparent-google-logo-google-search-meng-meng-company-text-logo-thumbnail.png',
                height: 40,
              ),
              Text(
                'Google',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget RegisterPage(final screenHeight, final screenWidth) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: screenHeight * 0.1,
          width: screenWidth * 0.8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: Colors.grey),
          ),
          child: TextField(
            onChanged: (value) {
              _email.text = value;
            },
            controller: _email,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                hintText: 'Enter your email',
                labelText: 'Email Address',
                border: InputBorder.none,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 9.0, horizontal: 10.0),
                prefixIcon: Icon(
                  Icons.email,
                  color: Color(0xFF519C6D),
                )),
          ),
        ),
        SizedBox(height: 16.0),
        Container(
          height: screenHeight * 0.1,
          width: screenWidth * 0.8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: Colors.grey),
          ),
          child: TextField(
            controller: _password,
            onChanged: (value) {
              _password.text = value;
            },
            obscureText: _isObscure,
            decoration: InputDecoration(
              hintText: 'Enter your password',
              labelText: 'Password',
              border: InputBorder.none,
              contentPadding:
                  EdgeInsets.symmetric(vertical: 9.0, horizontal: 10.0),
              prefixIcon: Icon(
                Icons.lock,
                color: Color(0xFF519C6D),
              ),
              suffixIcon: GestureDetector(
                onTap: _toggleVisibility,
                child: (_isObscure)
                    ? Icon(
                        Icons.visibility_outlined,
                        color: Color(0xFF519C6D),
                      )
                    : Icon(
                        Icons.visibility_off_outlined,
                        color: Color(0xFF519C6D),
                      ),
              ),
            ),
          ),
        ),
        SizedBox(height: 16.0),
        Container(
          height: screenHeight * 0.1,
          width: screenWidth * 0.8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: Colors.grey),
          ),
          child: TextField(
            onChanged: (value) {
              _confirmPassword.text = value;
            },
            obscureText: _isObscure2,
            decoration: InputDecoration(
              hintText: 'Enter your password',
              labelText: 'Confirm Password',
              border: InputBorder.none,
              contentPadding:
                  EdgeInsets.symmetric(vertical: 9.0, horizontal: 10.0),
              prefixIcon: Icon(
                Icons.lock,
                color: Color(0xFF519C6D),
              ),
              suffixIcon: GestureDetector(
                onTap: _toggleVisibility2,
                child: (_isObscure2)
                    ? Icon(Icons.visibility_outlined, color: Color(0xFF519C6D))
                    : Icon(
                        Icons.visibility_off_outlined,
                        color: Color(0xFF519C6D),
                      ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: screenWidth * 0.8,
          height: screenHeight * 0.1,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  Color(0xFF519C6D), // Change the background color here
            ),
            onPressed: () {
              print(_email.text);
              print(_password.text);
              print(_confirmPassword.text);
              if (_email == '') {
                print("Email Can't be null");
              } else if (_password.text != _confirmPassword.text) {
                print("Passwords do not match");
              } else if (_password.text == '' || _confirmPassword.text == '') {
                print("Password cannot be null");
              } else if (_password.text == _confirmPassword.text) {
                if (_password.text.length < 8) {
                  print(
                      "Too short password, password length must be atleast 8");
                } else {
                  // ready to call next screen
                  showModalBottomSheet(
                      context: context,
                      builder: (context) => Scaffold(
                            resizeToAvoidBottomInset: true,
                            body: SingleChildScrollView(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: screenWidth,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Icon(
                                      Icons.account_circle_outlined,
                                      color: Colors.black,
                                      size: 110,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Constants.customContainer(
                                        screenHeight,
                                        screenWidth,
                                        _nameOfPerson,
                                        "Enter your name",
                                        "Your Good Name",
                                        Icons.account_circle_outlined),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Constants.customContainer(
                                        screenHeight,
                                        screenWidth,
                                        _category,
                                        "Enter Professional Category",
                                        "Category",
                                        Icons.category_outlined),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Constants.customContainer(
                                        screenHeight,
                                        screenWidth,
                                        _qualifications,
                                        "Enter Qualification",
                                        'Highest Qualification From',
                                        Icons.account_balance_outlined),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Constants.customContainer(
                                        screenHeight,
                                        screenWidth,
                                        _location,
                                        'Enter location',
                                        'Location',
                                        Icons.location_on_outlined),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Constants.button(
                                      screenWidth,
                                      screenHeight,
                                      "Done",
                                      () async {
                                        // validate input
                                        if (_nameOfPerson == '')
                                          print("Enter your name");
                                        else if (_category == '')
                                          print("Please Enter Category");
                                        else if (_qualifications == '')
                                          print("Enter Highest Qualification");
                                        else if (_location == '')
                                          print("Please enter your location");
                                        else {
                                          // call firebase funtion to create user
                                          print("User entered ...");
                                          print(
                                              "${_email.text} ${_password.text} ${_confirmPassword.text} ${_nameOfPerson.text} ${_category.text} ${_qualifications.text} ${_location.text}");
                                          await Firebase.createNewUser(
                                              context: context,
                                              email: _email.text,
                                              password: _password.text,
                                              name: _nameOfPerson.text,
                                              category: _category.text,
                                              qualification:
                                                  _qualifications.text,
                                              location: _location.text);
                                        }
                                      },
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ));
                }
              }
            },
            child: Text(
              'Register',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Divider(
                indent: 20,
                color: Color(0xFF9f9f9f),
                height: 36,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'Or Signup with',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF9f9f9f),
                ),
              ),
            ),
            Expanded(
              child: Divider(
                endIndent: 20,
                color: Color(0xFF9f9f9f),
                height: 36,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),

        /////
        GestureDetector(
          onTap: () {},
          child: Container(
            width: screenWidth * 0.5,
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              border: Border.all(color: Colors.grey),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network(
                  'https://w7.pngwing.com/pngs/989/129/png-transparent-google-logo-google-search-meng-meng-company-text-logo-thumbnail.png',
                  height: 40,
                ),
                Text(
                  'Google',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
