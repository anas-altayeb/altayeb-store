import 'package:flrx_validator/flrx_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/core/constant/constant.dart';
import 'package:store/controller/controller.dart';
import 'package:store/utils.dart';
import 'package:store/view/Screens/auth/sign_in.dart';
import 'package:store/view/widget/auth/custom_text.dart';
import 'package:store/view/widget/auth/input_form_field.dart';
import 'package:quiver/strings.dart';
import 'package:store/view/widget/home/button.dart';

class SignUp extends StatefulWidget {
  SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) => Scaffold(
          appBar: AppBar(
            title: CustomText(
              text: "Create your account",
              fontsize: 18,
              color: white,
            ),
            leading: GestureDetector(
                onTap: () => Get.to(() => SignIn()),
                child: Icon(
                  Icons.arrow_back,
                  size: 30,
                )),
            backgroundColor: blue,
          ),
          body: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    CustomText(
                      text: 'Sign Up',
                      fontsize: 25,
                      weight: FontWeight.bold,
                      color: blue,
                      alignment: Alignment.center,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 60,
                          bottom: MediaQuery.of(context).size.height / 40),
                      child: CustomText(
                        text: 'Enter your credentials to continue',
                        fontsize: 12,
                        color: gry,
                        alignment: Alignment.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 60,
                      ),
                      child: CustomText(
                        text: 'User Name',
                        fontsize: 20,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 60,
                          bottom: MediaQuery.of(context).size.height / 60),
                      child: InputFormField(
                        hintText: ('Your Name'),
                        onSaved: (newValue) => controller.name = newValue,
                        prefixIcon: Icon(
                          Icons.person_outline,
                          color: blue,
                          size: 30,
                        ),
                        validator: Validator(
                          rules: [
                            RequiredRule(
                                validationMessage: ('username_validation')),
                          ],
                        ),
                      ),
                    ),
                    CustomText(
                      text: 'Email',
                      fontsize: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 60,
                          bottom: MediaQuery.of(context).size.height / 60),
                      child: InputFormField(
                        hintText: ('email'),
                        onSaved: (Value) => controller.email = Value,
                        prefixIcon: Image.asset('aseets/image/email.png'),
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
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 60,
                          bottom: MediaQuery.of(context).size.height / 60),
                      child: CustomText(
                        text: 'Password',
                        fontsize: 20,
                      ),
                    ),
                    InputFormField(
                      obscure: _obscure,
                      hintText: ('Password'),
                      prefixIcon: Image.asset('aseets/image/lock.png'),
                      onSaved: (Value) => controller.password = Value,
                      suffixIcon: InkWell(
                        onTap: () {
                          _obscure = !_obscure;
                          setState(() {});
                        },
                        child: Icon(
                          Icons.remove_red_eye_outlined,
                          color: _obscure
                              ? null
                              : Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      validator: Validator(
                        rules: [
                          MinLengthRule(8,
                              validationMessage: ('password_length')),
                          RequiredRule(
                              validationMessage: ('password_validation')),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 20,
                          bottom: MediaQuery.of(context).size.height / 20),
                      child: Button(
                        title: 'Sign Up',
                        primarycolor: blue,
                        onPrimarycolor: white,
                        onPress: () {
                          _formKey.currentState?.save();
                          if (_formKey.currentState!.validate()) {
                            controller.createAccountWithEmailAndPassword();
                          }
                        },
                        borderRadius: 10,
                        fontWeight: FontWeight.bold,
                        fontsize: 15,
                        hight: 20,
                        width: 145,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already have an account ? '),
                        GestureDetector(
                          onTap: () => Get.to(() => SignIn()),
                          child: CustomText(
                            text: 'Sign in ',
                            color: blue,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
