//
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:get/get.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
//
// import '../model/user_model.dart';
// import '../screens/load_screen.dart';
// import '../screens/register_screen/register_screen.dart';
//
// class AuthServices{
//
//   FirebaseAuth auth =FirebaseAuth.instance;
//
//
//   Future register (UserModel userModel)async{
//     await auth.createUserWithEmailAndPassword(email: userModel.email!.trim(), password: userModel.password!.trim());
//   }
// }