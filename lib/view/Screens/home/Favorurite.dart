import 'package:flutter/material.dart';
import 'package:store/view/widget/auth/custom_text.dart';
import 'package:store/view/widget/home/Favorurite_cont.dart';


class FavoruriteScreen extends StatelessWidget {
  const FavoruriteScreen(
  {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(top: 20, right: 10, left: 10),
          child: SingleChildScrollView(
            child: Column(children: [
              const SizedBox(
                height: 40,
              ),
              const CustomText(
                text: 'My Favorite',
                alignment: Alignment.center,
                fontsize: 22,
                weight: FontWeight.bold,
              ),
              SizedBox(
                height: 680,
                child: ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(
                          height: 30,
                        ),
                    itemCount: 1,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return const Column(
                        children: [
                          MyFavoruritecontainer(
                            productname: 'Samsung A12',
                            productImage:
                                'https://firebasestorage.googleapis.com/v0/b/store-61888.appspot.com/o/phone%2FSamsung%2FSamsung%20Galaxy%20A12.jpg?alt=media&token=a942c10d-b18e-4fd2-ad08-3718aec292d7',
                            productPrice: '14000 EGP',
                            productValum: '13',
                          ),
                          MyFavoruritecontainer(
                            productname: 'Apple Iphone XS',
                            productImage:
                                'https://firebasestorage.googleapis.com/v0/b/store-61888.appspot.com/o/phone%2Fiphone%2FApple%20Iphone%20XS.jpg?alt=media&token=7d8e9a1c-0eac-4d03-84bc-3e1ac1c801fd',
                            productPrice: '14000 EGP',
                            productValum: '13',
                          ),
                          MyFavoruritecontainer(
                            productname: 'iPhone 13',
                            productImage:
                                'https://firebasestorage.googleapis.com/v0/b/store-61888.appspot.com/o/phone%2Fiphone%2FiPhone%2013.jpg?alt=media&token=38d294f6-af9e-4158-8fac-40d913b66342',
                            productPrice: '14000 EGP',
                            productValum: '13',
                          ),
                          MyFavoruritecontainer(
                            productname: 'Redmi Note 11 Pro',
                            productImage:
                                'https://firebasestorage.googleapis.com/v0/b/store-61888.appspot.com/o/phone%2FXiaomi%2FRedmi%20Note%2011%20Pro.jpg?alt=media&token=ca26b83f-d5bd-4293-a4c3-012598701f2f',
                            productPrice: '14000 EGP',
                            productValum: '13',
                          )
                        ],
                      );
                    }),
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
                      const Center(
                    child: Text(
                      'Add All To Cart',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
                onTap: () {},
              ),
            ]),
          ),
        ));
  }
}
