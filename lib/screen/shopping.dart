import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:shopping/models/product.dart';
import 'package:shopping/screen/animeScreen.dart';
import 'package:shopping/screen/shoppingCart.dart';
import 'package:shopping/screen/user.dart';

import '../controllers/cartController.dart';
import '../controllers/animeController.dart';

class ShopScreen extends StatelessWidget {
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
              child: Icon(Icons.account_box_outlined),
              backgroundColor: Colors.indigoAccent,
              foregroundColor: Colors.white,
              heroTag: "btn_account",
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return UserScreen();
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ImageSlideshow(
                  /// Width of the [ImageSlideshow].
                  width: 392.727,

                  /// Height of the [ImageSlideshow].
                  height: 200,

                  /// The page to show when first creating the [ImageSlideshow].
                  initialPage: 0,

                  /// The color to paint the indicator.
                  indicatorColor: Colors.blue,

                  /// The color to paint behind th indicator.
                  indicatorBackgroundColor: Colors.grey,

                  /// The widgets to display in the [ImageSlideshow].
                  /// Add the sample image file into the images folder
                  children: [
                    Image.asset(
                      "assets/images/slide1.jpg",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "assets/images/slide2.jpg",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "assets/images/slide3.jpg",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "assets/images/slide4.jpg",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "assets/images/slide5.jpg",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "assets/images/slide6.jpg",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "assets/images/slide7.jpg",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "assets/images/slide8.jpg",
                      fit: BoxFit.cover,
                    ),
                  ],

                  /// Called whenever the page in the center of the viewport changes.
                  onPageChanged: (value) {
                    print('Page changed: $value');
                  },

                  /// Auto scroll interval.
                  /// Do not auto scroll with null or 0.
                  autoPlayInterval: 3000,

                  /// Loops back to first slide.
                  isLoop: true,
                ),
              ],
            ),
            Container(
              height: 5,
              color: Colors.white,
            ),
            Container(
              height: 50,
              color: Colors.indigo,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 40,
                    child: FloatingActionButton(
                      heroTag: "button_to_anime_screen_1",
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return AnimeScreen();
                            },
                          ),
                        );
                      },
                      child: Icon(
                        Icons.movie_creation,
                        color: Colors.white,
                      ),
                      backgroundColor: Colors.indigoAccent,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    child: FloatingActionButton(
                      heroTag: "button_to_anime_screen_2",
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return AnimeScreen();
                            },
                          ),
                        );
                      },
                      child: Icon(
                        Icons.movie_creation,
                        color: Colors.white,
                      ),
                      backgroundColor: Colors.indigoAccent,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    child: FloatingActionButton(
                      heroTag: "button_to_anime_screen_3",
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return AnimeScreen();
                            },
                          ),
                        );
                      },
                      child: Icon(
                        Icons.movie_creation,
                        color: Colors.white,
                      ),
                      backgroundColor: Colors.indigoAccent,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    child: FloatingActionButton(
                      heroTag: "button_to_anime_screen_4",
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return AnimeScreen();
                            },
                          ),
                        );
                      },
                      child: Icon(
                        Icons.movie_creation,
                        color: Colors.white,
                      ),
                      backgroundColor: Colors.indigoAccent,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    child: FloatingActionButton(
                      heroTag: "button_to_anime_screen_5",
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return AnimeScreen();
                            },
                          ),
                        );
                      },
                      child: Icon(
                        Icons.movie_creation,
                        color: Colors.white,
                      ),
                      backgroundColor: Colors.indigoAccent,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 5,
              color: Colors.white,
            ),
            Text("Press On 1 Of 5 Icon Movie")
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.indigo,
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
