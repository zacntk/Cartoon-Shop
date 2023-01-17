import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:shopping/screen/shopping.dart';
import '../controllers/cartController.dart';

class shoppingCartScreen extends StatelessWidget {
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
        title: Text("Cart"),
        actions: [
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
      body: Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Column(
          children: [
            Expanded(
              child: GetX<CartController>(
                builder: (controller) {
                  return ListView.builder(
                    itemCount: controller.cartItems.length,
                    itemBuilder: (context, index) {
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
                                  image: AssetImage(controller
                                      .cartItems[index].productImages),
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
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(5)),
                                                  color: Colors.black),
                                              child: Text(
                                                ' ${controller.cartItems[index].productName} ',
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
                                    SizedBox(
                                      height: 90,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 35,
                                          child: FloatingActionButton(
                                            child: Icon(Icons.delete),
                                            backgroundColor:
                                                Colors.indigoAccent,
                                            foregroundColor: Colors.white,
                                            heroTag: "btn_1_1_${index}",
                                            onPressed: () => [
                                              cartController.removeFromCart(
                                                  controller.cartItems[index]),
                                              Fluttertoast.showToast(
                                                msg: "Remove Complete",
                                                gravity: ToastGravity.SNACKBAR,
                                                timeInSecForIosWeb: 3,
                                                backgroundColor: Colors.red,
                                                textColor: Colors.white,
                                              ),
                                            ],
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
                                            ' Price : ${controller.cartItems[index].price} ',
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
                    },
                  );
                },
              ),
            ),
            SizedBox(
              height: 40,
              width: double.infinity,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                    color: Colors.indigo[700]),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  GetX<CartController>(
                    builder: (controller) {
                      return Text(
                        'Total amount: ${controller.totalPrice} Baht',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      );
                    },
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
