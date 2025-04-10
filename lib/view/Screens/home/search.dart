// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:store/core/constant/constant.dart';
import 'package:store/view_model/home_view_model.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Card(
        child: TextField(
          decoration: InputDecoration(
              fillColor: blue,
              prefixIcon: Icon(Icons.search),
              hintText: 'Search...'),
          onChanged: (val) {
            setState(() {
              name = val;
            });
          },
        ),
      )),
      body: GetBuilder<HomeViewModel>(
        init: HomeViewModel(),
        builder: (controller) => name.isEmpty
            ? ListView.builder(
                itemCount: controller.phoneProductModel.length,
                itemBuilder: (context, index) {
                  if (name.isEmpty) {
                    return Column(
                      children: [
                        ListTile(
                          title: Text(
                            '${controller.AppliancesProductModel[index].name}',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            '${controller.AppliancesProductModel[index].price}',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          leading: SizedBox(
                            height: 60,
                            width: 60,
                            child: Image(
                              image: NetworkImage(
                                '${controller.AppliancesProductModel[index].image}',
                              ),
                            ),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            '${controller.HeadphoneProduct[index].name}',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            '${controller.HeadphoneProduct[index].price}',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          leading: SizedBox(
                            height: 60,
                            width: 60,
                            child: Image(
                              image: NetworkImage(
                                '${controller.HeadphoneProduct[index].image}',
                              ),
                            ),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            '${controller.phoneProductModel[index].name}',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            '${controller.phoneProductModel[index].price}',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          leading: SizedBox(
                            height: 60,
                            width: 60,
                            child: Image(
                              image: NetworkImage(
                                '${controller.phoneProductModel[index].image}',
                              ),
                            ),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            '${controller.monitorProductModel[index].name}',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            '${controller.monitorProductModel[index].price}',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          leading: SizedBox(
                            height: 60,
                            width: 60,
                            child: Image(
                              image: NetworkImage(
                                '${controller.monitorProductModel[index].image}',
                              ),
                            ),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            '${controller.productModel[index].name}',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            '${controller.productModel[index].price}',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          leading: SizedBox(
                            height: 60,
                            width: 60,
                            child: Image(
                              image: NetworkImage(
                                '${controller.productModel[index].image}',
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  }
                  if (controller.AppliancesProductModel[index].name
                      .toString()
                      .toLowerCase()
                      .startsWith(name.toLowerCase())) {
                    return ListTile(
                      title: Text(
                        '${controller.AppliancesProductModel[index].name}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        '${controller.AppliancesProductModel[index].price}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      leading: SizedBox(
                        height: 60,
                        width: 60,
                        child: Image(
                          image: NetworkImage(
                            '${controller.AppliancesProductModel[index].image}',
                          ),
                        ),
                      ),
                    );
                  }
                  if (controller.HeadphoneProduct[index].name
                      .toString()
                      .toLowerCase()
                      .startsWith(name.toLowerCase())) {
                    return ListTile(
                      title: Text(
                        '${controller.HeadphoneProduct[index].name}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        '${controller.HeadphoneProduct[index].price}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      leading: SizedBox(
                        height: 60,
                        width: 60,
                        child: Image(
                          image: NetworkImage(
                            '${controller.HeadphoneProduct[index].image}',
                          ),
                        ),
                      ),
                    );
                  }
                  if (controller.phoneProductModel[index].name
                      .toString()
                      .toLowerCase()
                      .startsWith(name.toLowerCase())) {
                    return ListTile(
                      title: Text(
                        '${controller.phoneProductModel[index].name}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        '${controller.phoneProductModel[index].price}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      leading: SizedBox(
                        height: 60,
                        width: 60,
                        child: Image(
                          image: NetworkImage(
                            '${controller.phoneProductModel[index].image}',
                          ),
                        ),
                      ),
                    );
                  }
                  if (controller.monitorProductModel[index].name
                      .toString()
                      .toLowerCase()
                      .startsWith(name.toLowerCase())) {
                    return ListTile(
                      title: Text(
                        '${controller.monitorProductModel[index].name}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        '${controller.monitorProductModel[index].price}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      leading: SizedBox(
                        height: 60,
                        width: 60,
                        child: Image(
                          image: NetworkImage(
                            '${controller.monitorProductModel[index].image}',
                          ),
                        ),
                      ),
                    );
                  }
                  if (controller.productModel[index].name
                      .toString()
                      .toLowerCase()
                      .startsWith(name.toLowerCase())) {
                    return ListTile(
                      title: Text(
                        '${controller.productModel[index].name}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        '${controller.productModel[index].price}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      leading: SizedBox(
                        height: 60,
                        width: 60,
                        child: Image(
                          image: NetworkImage(
                            '${controller.productModel[index].image}',
                          ),
                        ),
                      ),
                    );
                  }
                  return Container();
                },
              )
            : SizedBox(
                height: 3,
              ),
      ),
    );
  }
}
