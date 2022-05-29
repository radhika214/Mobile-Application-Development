import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:seller_app/core/auth/models/message.dart';
import 'package:seller_app/utils/constants.dart';
import '../models/user.dart' as UserClass;

class UserOperations {
  // Step-1 Create an Instance of FireBase Auth Service
  final FirebaseAuth _auth = FirebaseAuth.instance;
  // register
  Future<Message> add(UserClass.User user) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: user.userid, password: user.password);

      await FirebaseFirestore.instance
          .collection(Collections.USERS)
          .add({'user_email': user.userid});
      Message message = Message.takeMessage(
          message: 'Register SuccessFully', code: Constants.SUCCESS);
      return message;
    } catch (err) {
      //  print(err.toString());
      return Message.takeMessage(
          message: 'Register Fails', code: Constants.FAIL);
    }

    // try{
    //   await FirebaseFirestore.instance.collection(Collection.USERS).add({

    //   })
    // }
  }

  // Login
  Future<Message> read(UserClass.User user) async {
    try {
      await _auth.signInWithEmailAndPassword(
          email: user.userid, password: user.password);
      return Message.takeMessage(
          message: 'Login SuccessFully', code: Constants.SUCCESS);
    } catch (err) {
      return Message.takeMessage(message: 'Login Fails', code: Constants.FAIL);
    }
  }

  // Change password
  update() {}
  // Account DeActivate
  remove() {}
}
