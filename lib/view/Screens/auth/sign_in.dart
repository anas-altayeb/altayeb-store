import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/core/constant/constant.dart';
import 'package:store/controller/controller.dart';
import 'package:store/utils.dart';
import 'package:store/view/Screens/auth/sign_up.dart';
import 'package:store/view/widget/auth/custom_text.dart';
import 'package:store/view/widget/auth/input_form_field.dart';
import 'package:store/view/widget/auth/social_boutton.dart';
import 'package:store/view/widget/home/button.dart';
import '../../../model/control_view.dart';
import 'package:quiver/strings.dart';

class SignIn extends StatefulWidget {
  SignIn({super.key});
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _obscure = true;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) => Scaffold(
          body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 9,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CustomText(
                            text: 'Welcome,',
                            fontsize: 25,
                            weight: FontWeight.bold),
                        GestureDetector(
                          onTap: () => Get.offAll(() => SignUp()),
                          child: CustomText(
                            text: 'Sign UP',
                            fontsize: 25,
                            weight: FontWeight.bold,
                            color: blue,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 60,
                          bottom: MediaQuery.of(context).size.height / 40),
                      child: CustomText(
                        text: 'Sign In To Contiune ',
                        fontsize: 14,
                        color: gry,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 50,
                          bottom: MediaQuery.of(context).size.height / 50),
                      child: const CustomText(
                        text: 'Email',
                        fontsize: 16,
                      ),
                    ),
                    InputFormField(
                      hintText: ('Email'),
                      onSaved: (Value) => controller.email = Value,
                      prefixIcon: Image.asset('aseets/image/email.png'),
                      keyboardType: TextInputType.emailAddress,
                      validator: (email) {
                        if (isBlank(email)) {
                          return ('email_validation');
                        }
                        if (EmailChecker.isNotValid(email!)) {
                          return ('email_invalid');
                        }
                        return null;
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 50,
                          bottom: MediaQuery.of(context).size.height / 50),
                      child: const CustomText(
                        text: 'Password',
                        fontsize: 16,
                      ),
                    ),
                    InputFormField(
                      obscure: _obscure,
                      hintText: ('Password'),
                      prefixIcon: Image.asset('aseets/image/lock.png'),
                      onSaved: (newValue) => controller.password = newValue,
                      suffixIcon: InkWell(
                        onTap: () {
                          _obscure = !_obscure;
                          setState(() {});
                        },
                        child: Icon(
                          Icons.remove_red_eye,
                          color: _obscure
                              ? null
                              : Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 50,
                        bottom: MediaQuery.of(context).size.height / 25,
                      ),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Forgot Password ?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: blue,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Button(
                          title: 'Log In',
                          primarycolor: primarycolor,
                          onPrimarycolor: white,
                          onPress: () {
                            _formKey.currentState?.save();
                            if (_formKey.currentState!.validate()) {
                              controller.signInWithEmailAndPassword();
                            }
                          },
                          borderRadius: 10,
                          fontWeight: FontWeight.bold,
                          fontsize: 16,
                          hight: 20,
                          width: 150),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 50,
                          bottom: MediaQuery.of(context).size.height / 50),
                      child: CustomText(
                          text: 'or connect with social media',
                          color: gry,
                          fontsize: 16,
                          alignment: Alignment.center),
                    ),
                    SocialButton(
                      onPress: (() {
                        controller.googleSignInMethod();
                      }),
                      text: 'Sign with Google',
                      imageName: 'aseets/image/google.png',
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 30,
                    ),
                    SocialButton(
                      onPress: (() {
                        Get.to(() => const ControlView());
                      }),
                      text: 'Sign with Facebook',
                      imageName: 'aseets/image/facebook.png',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
