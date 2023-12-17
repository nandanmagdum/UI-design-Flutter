import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:untitled/screens/profile_screen.dart';
class Firebase {
  static final FirebaseAuth auth = FirebaseAuth.instance;
  static var user ;
  static final fire = FirebaseFirestore.instance;
  static Future<void> createNewUser({required final BuildContext context,final email, final password, final name, final category, final qualification, final location}) async{
    try{
      print("creating new user...");
      user = await auth.createUserWithEmailAndPassword(email: email, password: password);
      print("new user created...");
      print("adding user data to firebase");
      var uid = auth.currentUser!.uid;
      await fire.collection('users').doc(uid).set({
        'email': email,
        'name': name,
        'category': category,
        'qualification': qualification,
        'location': location
      });
      print("User data added");
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
    } catch(e)
    {
      print(e);
    }
  }

  // login function
  static Future<UserCredential?> signIn({required final BuildContext context, required final email, required final password}) async
  {
    try{
      final userCredential = await auth.signInWithEmailAndPassword(email: email, password: password);
      return userCredential;
    } catch(e)
    {
      print(e);
    }
    return null;
  }
  static Future<void> signOUT()  async{
    await auth.signOut();
  }
}