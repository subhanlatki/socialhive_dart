import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController{
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController repasswordcontroller = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;
  RxBool isloding = false.obs;

  Future<void> registerUser()  async {  
    try {
      isloding.value = true;

      if(passwordcontroller.text != repasswordcontroller.text){
        Get.snackbar('Eror', 'password do not Match');
        isloding.value = false;
        return;
      }

      UserCredential authResult = await auth.createUserWithEmailAndPassword(
        email: emailcontroller.text, password: passwordcontroller.text);

        print("user regestered with UID: ${authResult.user?.uid}");
        isloding.value = false;
    } on FirebaseAuthException catch (e){
      isloding.value = false;
      print(e.toString()); 

      if(e.code == "email Already in Use"){
        Get.snackbar('Eror', 'Email Already Exists');
      }else if(e.code == 'Weak pasword'){
        Get.snackbar('Eror', 'The Pasword Provided to Weak');
      }else if(e.code == 'invalid email') {
        Get.snackbar('Eror', 'The Email provided invalid');
      }else {
        Get.snackbar('Eror', e.message ?? 'An error occured');
      }

    } catch (e){
      isloding.value = false;
      Get.snackbar('Error', e.toString());
    }
  }
}