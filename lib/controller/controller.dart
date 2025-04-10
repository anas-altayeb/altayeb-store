import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:store/model/user_model.dart';
import 'package:store/core/service/firestore_user.dart';


import '../model/control_view.dart';

class HomeController extends GetxController {
  GoogleSignIn googleSignIn = GoogleSignIn(scopes: ['email']);
  FirebaseAuth _auth = FirebaseAuth.instance;
  String? email, password, name;
  Rx<User?> _user = FirebaseAuth.instance.currentUser.obs;

  String? get user => _user.value?.email;
  int counter = 0;
  @override
  void onInit() {
   
    super.onInit();
    _user.bindStream(_auth.authStateChanges());
  }

  void increment() {
    counter++;
    update();
  }

  void decrement() {
    counter--;
    update();
  }

  void googleSignInMethod() async {
    final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
    // ignore: avoid_print
    print(googleUser);
    GoogleSignInAuthentication? googleSignInAuthentication =
        await googleUser?.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
      idToken: googleSignInAuthentication?.idToken,
      accessToken: googleSignInAuthentication?.accessToken,
    );

    await _auth.signInWithCredential(credential).then((user) {
      saveUser(user);
      Get.offAll(ControlView());
    });
  }

  void signInWithEmailAndPassword() async {
    try {
      await _auth
          .signInWithEmailAndPassword(email: email!, password: password!)
          .then((User) async {
       
      });

      Get.offAll(ControlView());
    } catch (e) {
      print(e);
      Get.snackbar(
        'Error login account',
        e.toString(),
        colorText: Colors.black,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  void createAccountWithEmailAndPassword() async {
    try {
      await _auth
          .createUserWithEmailAndPassword(email: email!, password: password!)
          .then((user) async {
             saveUser(user);
          });

      Get.offAll(ControlView());
    } catch (e) {
      print(e);
      Get.snackbar(
        'Error login account',
        e.toString(),
        colorText: Colors.black,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
   void saveUser(UserCredential user) async {
    await FireStoreUser().addUserToFireStore(UserModel(
      userId: user.user!.uid,
      email: user.user!.email,
      name: name == null ? user.user?.displayName : name,
      pic: '',
    ));
  }
}

