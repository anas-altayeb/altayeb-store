// ignore_for_file: prefer_const_constructors, file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/view/widget/home/Account_cont.dart';
import 'home.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                width: 20,
              ),
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('aseets/image/abdallah.jpg'),
                      fit: BoxFit.fill),
                ),
              ),
              SizedBox(
                width: 14,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                      Text(
                        'Abdallah Hammad',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'abdallahhamad343@gmail.com',
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 7,
          ),
          AccountContainer(Icon(Icons.shopping_bag_outlined), 'Orders'),
          AccountContainer(Icon(Icons.credit_card_outlined), 'My Details'),
          AccountContainer(
              Icon(Icons.location_on_outlined), 'Delivery Address'),
          AccountContainer(Icon(Icons.credit_card_outlined), 'Payment Methods'),
          AccountContainer(Icon(Icons.card_giftcard), 'Promo Cord'),
          AccountContainer(
              Icon(Icons.notifications_on_outlined), ' Notifecations '),
          AccountContainer(Icon(Icons.help_outline), 'Help'),
          AccountContainer(Icon(Icons.question_mark_outlined), 'About '),
          Divider(
            color: Colors.grey.shade400,
          ),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            child: Container(
              width: 350,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blueAccent,
              ),
              child: // ignore: sort_child_properties_last
                  Center(
                child: Text(
                  'Log Out',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
            onTap: () => Get.to(() => HomeScreen()),
          ),
        ],
      ),
    );
  }
}
