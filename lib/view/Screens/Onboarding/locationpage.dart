import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/core/constant/constant.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/constant/imageasset.dart';
import 'package:store/view/Screens/Onboarding/onboarding.dart';
import 'package:store/view/Screens/auth/sign_in.dart';
import 'package:country_state_city_pro/country_state_city_pro.dart';
import 'package:store/view/widget/auth/custom_text.dart';
import 'package:store/view/widget/auth/custombuttomlocacion.dart';


// ignore: must_be_immutable
class LocationPage extends StatelessWidget {
  TextEditingController country = TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController city = TextEditingController();
  LocationPage({super.key});
  int currentpage = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
                onTap: () => Get.to(() => const WelcomePage()),
                child: const Icon(
                  Icons.arrow_back,
                  size: 20,
                )),
        centerTitle: true,
        backgroundColor: ColorApp.backgroundColor,
        elevation: 0.0,
        title: Text("Add your Location",style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: const Color.fromARGB(255, 90, 90, 90)),),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
          width: 250,
          height: 300,
          child: Image.asset(ImageAsset.location,),
          ),
          // const SizedBox(height: 20,),
          const CustomText(
                text: 'Select Your Location',
                fontsize: 23,
                alignment: Alignment.center,
                weight: FontWeight.bold),
                const SizedBox(height: 20,
                ),
          const CustomText(
              text:'Switch on your location to stay in tune with what is happening in your area',
              fontsize: 12,
              alignment: Alignment.center,
              color: Colors.grey
              ),
          const SizedBox(height: 30,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: CountryStateCityPicker(
              country: country,
              state: state,
              city: city,
            ),),
          const SizedBox(height: 40,),
          Container(
            padding:const EdgeInsets.symmetric(horizontal: 90),
            child: SizedBox(
            height: 70,
            width: double.infinity,
            child: CustomBottomLocation(
            text: "Submit", onPress: () {
                Country = country.text;
                City = city.text;
                Get.to(() => SignIn());
                },),),)
        ]),
      ),
    );
  }
}
