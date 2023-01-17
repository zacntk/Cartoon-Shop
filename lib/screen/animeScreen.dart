import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:shopping/models/product.dart';
import 'package:shopping/screen/shopping.dart';
import 'package:shopping/screen/shoppingCart.dart';
import 'package:shopping/screen/user.dart';

import '../controllers/cartController.dart';
import '../controllers/animeController.dart';

class AnimeScreen extends StatelessWidget {
  final shoppingController = Get.put(AnimeController());
  final cartController = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.fromLTRB(10, 5, 0, 1),
          child: Image.asset(
            "assets/images/logo.png",
          ),
        ),
        leadingWidth: 45,
        title: Text("Anime"),
        actions: [
          SizedBox(
            height: 10,
            width: 37,
            child: FloatingActionButton(
              child: Icon(Icons.search),
              backgroundColor: Colors.indigoAccent,
              foregroundColor: Colors.white,
              heroTag: Text("btn_search"),
              onPressed: () {
                showSearch(context: context, delegate: MySearchDelegate());
              },
            ),
          ),
          SizedBox(
            width: 10,
          ),
          SizedBox(
            height: 10,
            width: 37,
            child: FloatingActionButton(
              child: Icon(Icons.shopping_cart_rounded),
              backgroundColor: Colors.indigoAccent,
              foregroundColor: Colors.white,
              heroTag: Text("btn_cart"),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return shoppingCartScreen();
                    },
                  ),
                );
              },
            ),
          ),
          SizedBox(
            width: 10,
          ),
          SizedBox(
            height: 10,
            width: 37,
            child: FloatingActionButton(
              child: Icon(Icons.home),
              backgroundColor: Colors.indigoAccent,
              foregroundColor: Colors.white,
              heroTag: "btn_home",
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ShopScreen();
                    },
                  ),
                );
              },
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
        backgroundColor: Colors.indigo[700],
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          height: double.infinity,
          color: Colors.amber[100],
          child: GetX<AnimeController>(
            builder: (controller) {
              return ListView.builder(
                itemCount: controller.products_1.length,
                itemBuilder: (context, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 176.35,
                              //360 - 7.3
                              height: 220,
                              decoration: BoxDecoration(
                                color: Colors.indigo[700],
                                image: DecorationImage(
                                  image: AssetImage(controller
                                      .products_1[index].productImages),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 25,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 128,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 35,
                                          child: FloatingActionButton(
                                            child:
                                                Icon(Icons.keyboard_arrow_up),
                                            backgroundColor:
                                                Colors.indigoAccent,
                                            foregroundColor: Colors.white,
                                            heroTag: "btn_1_1_${index}",
                                            onPressed: () {
                                              showDialog(
                                                barrierColor:
                                                    Colors.indigo[700],
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return AlertDialog(
                                                    content: Container(
                                                      width: 500,
                                                      height: 350,
                                                      child: Column(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Text(
                                                                '${controller.products_1[index].productName}',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 15,
                                                                  color: Colors
                                                                      .black,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              SizedBox(
                                                                width: 250,
                                                                height: 150,
                                                                child:
                                                                    Image.asset(
                                                                  "${controller.products_1[index].productImages}",
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              SizedBox(
                                                                width: 260,
                                                                height: 70,
                                                                child: Text(
                                                                  '${controller.products_1[index].productDescription}',
                                                                  style:
                                                                      TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        12,
                                                                  ),
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            height: 20,
                                                          ),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                ' Price : ${controller.products_1[index].price} Baht',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                              SizedBox(
                                                                width: 85,
                                                              ),
                                                              SizedBox(
                                                                height: 35,
                                                                child:
                                                                    FloatingActionButton(
                                                                  child: Icon(
                                                                      Icons
                                                                          .add),
                                                                  backgroundColor:
                                                                      Colors.indigo[
                                                                          700],
                                                                  foregroundColor:
                                                                      Colors
                                                                          .white,
                                                                  heroTag:
                                                                      "btn_2_2_${index}",
                                                                  onPressed:
                                                                      () => [
                                                                    cartController
                                                                        .addToCart(
                                                                            controller.products_1[index]),
                                                                    Fluttertoast
                                                                        .showToast(
                                                                      msg:
                                                                          "Add ${controller.products_1[index].productName} Is Complete",
                                                                      gravity:
                                                                          ToastGravity
                                                                              .SNACKBAR,
                                                                      timeInSecForIosWeb:
                                                                          3,
                                                                      backgroundColor:
                                                                          Colors
                                                                              .green,
                                                                      textColor:
                                                                          Colors
                                                                              .white,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            height: 30,
                                                          ),
                                                          SizedBox(
                                                            child: Text(
                                                              "Press Around To Exit",
                                                              style: TextStyle(
                                                                  fontSize: 10),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 176.35,
                              //360 - 7.3
                              height: 220,
                              decoration: BoxDecoration(
                                color: Colors.indigo[700],
                                image: DecorationImage(
                                  image: AssetImage(controller
                                      .products_2[index].productImages),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 25,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 128,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 35,
                                          child: FloatingActionButton(
                                            child:
                                                Icon(Icons.keyboard_arrow_up),
                                            backgroundColor:
                                                Colors.indigoAccent,
                                            foregroundColor: Colors.white,
                                            heroTag: "btn_3_1_${index}",
                                            onPressed: () {
                                              showDialog(
                                                barrierColor:
                                                    Colors.indigo[700],
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return AlertDialog(
                                                    content: Container(
                                                      width: 500,
                                                      height: 350,
                                                      child: Column(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Text(
                                                                '${controller.products_2[index].productName}',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 15,
                                                                  color: Colors
                                                                      .black,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              SizedBox(
                                                                width: 250,
                                                                height: 150,
                                                                child:
                                                                    Image.asset(
                                                                  "${controller.products_2[index].productImages}",
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              SizedBox(
                                                                width: 260,
                                                                height: 70,
                                                                child: Text(
                                                                  '${controller.products_2[index].productDescription}',
                                                                  style:
                                                                      TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        12,
                                                                  ),
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            height: 20,
                                                          ),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                ' Price : ${controller.products_2[index].price} Baht',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                              SizedBox(
                                                                width: 85,
                                                              ),
                                                              SizedBox(
                                                                height: 35,
                                                                child:
                                                                    FloatingActionButton(
                                                                  child: Icon(
                                                                      Icons
                                                                          .add),
                                                                  backgroundColor:
                                                                      Colors
                                                                          .indigoAccent,
                                                                  foregroundColor:
                                                                      Colors
                                                                          .white,
                                                                  heroTag:
                                                                      "btn_4_2_${index}",
                                                                  onPressed:
                                                                      () => [
                                                                    cartController
                                                                        .addToCart(
                                                                            controller.products_2[index]),
                                                                    Fluttertoast
                                                                        .showToast(
                                                                      msg:
                                                                          "Add ${controller.products_2[index].productName} Is Complete",
                                                                      gravity:
                                                                          ToastGravity
                                                                              .SNACKBAR,
                                                                      timeInSecForIosWeb:
                                                                          3,
                                                                      backgroundColor:
                                                                          Colors
                                                                              .green,
                                                                      textColor:
                                                                          Colors
                                                                              .white,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            height: 30,
                                                          ),
                                                          SizedBox(
                                                            child: Text(
                                                              "Press Around To Exit",
                                                              style: TextStyle(
                                                                  fontSize: 10),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

class MySearchDelegate extends SearchDelegate {
  List<String> searchResult = [
    "Naruto",
    "Arifureta",
    "Jujutsu Kaisen",
    "The Rising",
    "One Punch Man",
    "REBORN",
    "Attack On Titan",
    "SPY x FAMILY"
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    IconButton(
      onPressed: () {
        if (query.isEmpty) {
          close(context, null);
        } else {
          query = '';
        }
        query = '';
      },
      icon: Icon(Icons.clear_all),
    );
  }

  @override
  Widget? buildLeading(BuildContext context) {
    IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final shoppingController = Get.put(AnimeController());
    final cartController = Get.put(CartController());

    return Expanded(
      child: GetX<AnimeController>(
        builder: (controller) {
          return ListView.builder(
            itemCount: controller.products_1.length,
            itemBuilder: (context, index) {
              if (query == controller.products_1[index].productName) {
                return Padding(
                  padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 390 - 7.3,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.indigo,
                          image: DecorationImage(
                            image: AssetImage(
                                controller.products_1[index].productImages),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)),
                                            color: Colors.black),
                                        child: Text(
                                          ' ${controller.products_1[index].productName} ',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 90,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 35,
                                    child: FloatingActionButton(
                                      child: Icon(Icons.keyboard_arrow_up),
                                      backgroundColor: Colors.indigoAccent,
                                      foregroundColor: Colors.white,
                                      heroTag: "btn_1_1_${index}",
                                      onPressed: () {
                                        showDialog(
                                          barrierColor: Colors.indigo,
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              content: Container(
                                                width: 500,
                                                height: 350,
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Text(
                                                          '${controller.products_1[index].productName}',
                                                          style: TextStyle(
                                                            fontSize: 15,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        SizedBox(
                                                          width: 250,
                                                          height: 150,
                                                          child: Image.asset(
                                                            "${controller.products_1[index].productImages}",
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        SizedBox(
                                                          width: 260,
                                                          height: 70,
                                                          child: Text(
                                                            '${controller.products_1[index].productDescription}',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 12,
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 20,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          ' Price : ${controller.products_1[index].price} Baht',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                        SizedBox(
                                                          width: 85,
                                                        ),
                                                        SizedBox(
                                                          height: 35,
                                                          child:
                                                              FloatingActionButton(
                                                            child:
                                                                Icon(Icons.add),
                                                            backgroundColor:
                                                                Colors
                                                                    .indigoAccent,
                                                            foregroundColor:
                                                                Colors.white,
                                                            heroTag:
                                                                "btn_2_2_${index}",
                                                            onPressed: () => [
                                                              cartController
                                                                  .addToCart(
                                                                      controller
                                                                              .products_1[
                                                                          index]),
                                                              Fluttertoast
                                                                  .showToast(
                                                                msg:
                                                                    "Add ${controller.products_1[index].productName} Is Complete",
                                                                gravity:
                                                                    ToastGravity
                                                                        .SNACKBAR,
                                                                timeInSecForIosWeb:
                                                                    3,
                                                                backgroundColor:
                                                                    Colors
                                                                        .green,
                                                                textColor:
                                                                    Colors
                                                                        .white,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 30,
                                                    ),
                                                    SizedBox(
                                                      child: Text(
                                                        "Press Around To Exit",
                                                        style: TextStyle(
                                                            fontSize: 10),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    width: 180,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)),
                                        color: Colors.black),
                                    child: Text(
                                      ' Price : ${controller.products_1[index].price} ',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              } else if (query == controller.products_2[index].productName) {
                return Padding(
                  padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 390 - 7.3,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.indigo,
                          image: DecorationImage(
                            image: AssetImage(
                                controller.products_2[index].productImages),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)),
                                            color: Colors.black),
                                        child: Text(
                                          ' ${controller.products_2[index].productName} ',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 90,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 35,
                                    child: FloatingActionButton(
                                      child: Icon(Icons.keyboard_arrow_up),
                                      backgroundColor: Colors.indigoAccent,
                                      foregroundColor: Colors.white,
                                      heroTag: "btn_1_1_${index}",
                                      onPressed: () {
                                        showDialog(
                                          barrierColor: Colors.indigo,
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              content: Container(
                                                width: 500,
                                                height: 350,
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Text(
                                                          '${controller.products_2[index].productName}',
                                                          style: TextStyle(
                                                            fontSize: 15,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        SizedBox(
                                                          width: 250,
                                                          height: 150,
                                                          child: Image.asset(
                                                            "${controller.products_2[index].productImages}",
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        SizedBox(
                                                          width: 260,
                                                          height: 70,
                                                          child: Text(
                                                            '${controller.products_2[index].productDescription}',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 12,
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 20,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          ' Price : ${controller.products_2[index].price} Baht',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                        SizedBox(
                                                          width: 85,
                                                        ),
                                                        SizedBox(
                                                          height: 35,
                                                          child:
                                                              FloatingActionButton(
                                                            child:
                                                                Icon(Icons.add),
                                                            backgroundColor:
                                                                Colors
                                                                    .indigoAccent,
                                                            foregroundColor:
                                                                Colors.white,
                                                            heroTag:
                                                                "btn_2_2_${index}",
                                                            onPressed: () => [
                                                              cartController
                                                                  .addToCart(
                                                                      controller
                                                                              .products_2[
                                                                          index]),
                                                              Fluttertoast
                                                                  .showToast(
                                                                msg:
                                                                    "Add ${controller.products_2[index].productName} Is Complete",
                                                                gravity:
                                                                    ToastGravity
                                                                        .SNACKBAR,
                                                                timeInSecForIosWeb:
                                                                    3,
                                                                backgroundColor:
                                                                    Colors
                                                                        .green,
                                                                textColor:
                                                                    Colors
                                                                        .white,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 30,
                                                    ),
                                                    SizedBox(
                                                      child: Text(
                                                        "Press Around To Exit",
                                                        style: TextStyle(
                                                            fontSize: 10),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    width: 180,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)),
                                        color: Colors.black),
                                    child: Text(
                                      ' Price : ${controller.products_2[index].price} ',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              } else {
                return Row();
              }
            },
          );
        },
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    List<String> suggestions = searchResult.where((searchResult) {
      final result = searchResult.toLowerCase();
      final input = query.toLowerCase();

      return result.contains(input);
    }).toList();
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];

        return ListTile(
          textColor: Colors.black,
          title: Text(suggestion),
          onTap: () {
            query = suggestion;

            showResults(context);
          },
        );
      },
    );
  }
}
