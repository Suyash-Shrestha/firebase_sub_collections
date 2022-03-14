import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_sub_collections/view_models/store_item_list_view_model.dart';
import 'package:firebase_sub_collections/view_models/store_item_view_model.dart';
import 'package:firebase_sub_collections/view_models/store_view_model.dart';
import 'package:firebase_sub_collections/widgets/store_items_widget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'store_item_list_page.dart';

class StoreItemDetails extends StatefulWidget {
  String image, plantTitle, plantSubTitle, contact;
  double price;

  @override
  State<StoreItemDetails> createState() => _StoreItemDetailsState();
}

class _StoreItemDetailsState extends State<StoreItemDetails> {
  Widget _buildSingleDetailText(
      {context,
      String title,
      String subsTitle,
      String tralingTitle,
      String tralingSubsTitle}) {
    return Container(
      height: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
              ),
              Text(
                tralingTitle,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                subsTitle,
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w900),
              ),
              Text(
                tralingSubsTitle,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  int counter = 1;
  int TotalPrice;

  @override
  Widget build(BuildContext context) {
    // setState(() {
    //   totalPrice = widget.price.toInt() * counter;
    // });

    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: Text(
          'Food Order',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.w900,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            // Navigator.of(context).pushReplacement(
            //   MaterialPageRoute(
            //     builder: (ctx) => StoreItemListPage(),
            //   ),
            // );
            // Navigator.pushReplacement(context,
            //     MaterialPageRoute(builder: (context) => StoreItemListPage()));
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: <Widget>[
          Stack(
            children: [
              Positioned(
                // left: 70,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  height: 260,
                  width: 360,
                  //   width: 380,
                ), //Image(
                //   height: 260,
                //   width: 380,
                //   image: NetworkImage(
                //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsboAN558yvuCNpy0Lm40ZMT7iYZRkfbL6xA&usqp=CAU"),
                // ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10.0,
              left: 10.0,
              right: 10.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Food Details",
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.orange,
                    decoration: TextDecoration.underline,
                  ),
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Food Name:",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      "",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Rating:",
                      style: TextStyle(fontSize: 18.0),
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      "",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Restaurant Name:",
                      style: TextStyle(fontSize: 18.0),
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      "",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Location: ",
                      style: TextStyle(fontSize: 18.0),
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      "",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Price: ",
                      style: TextStyle(fontSize: 18.0),
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      "",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Quantity: ",
                      style: TextStyle(fontSize: 18.0),
                    ),
                    SizedBox(width: 10.0),
                    Container(
                      height: 35,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.orange[100],
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              if (counter > 1) {
                                setState(() {
                                  counter--;
                                });
                              }
                            },
                            child: Icon(
                              Icons.remove,
                              size: 30,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          Text(
                            counter.toString(),
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 25,
                                fontWeight: FontWeight.w900),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                counter++;
                              });
                            },
                            child: Icon(
                              Icons.add,
                              size: 30,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Total Price: ",
                      style: TextStyle(fontSize: 18.0),
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      "",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15.0),
                Center(
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.orange,
                    child: MaterialButton(
                        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                        minWidth: 180.0,
                        focusColor: Colors.orange,
                        onPressed: () {
                          Fluttertoast.showToast(msg: "Food Ordered");
                        },
                        child: Text(
                          "Order",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
