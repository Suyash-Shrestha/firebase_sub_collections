import 'package:flutter/material.dart';
import 'package:firebase_sub_collections/pages/store_list_page.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        foregroundColor: Colors.orange,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (ctx) => StoreListPage(),
              ),
            );
          },
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
        title: Text(
          "About",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: SizedBox.expand(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://cuteiphonewallpaper.com/wp-content/uploads/2020/09/Food-iPhone-Backgrounds.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          // height: 500.0,
          // width: 500.0,
          alignment: Alignment.center,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white60,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50.0),
                topRight: Radius.circular(50.0),
                bottomLeft: Radius.circular(50.0),
                bottomRight: Radius.circular(50.0),
              ),
            ),
            height: 550.0,
            width: 300.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Developed By:',
                  style: TextStyle(
                    color: Color(0xFF242424),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                CircleAvatar(
                  maxRadius: 50,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    maxRadius: 50,
                    backgroundImage: AssetImage("images/profilePic.jpg"),
                  ),
                ),
                Container(
                  height: 100.0,
                  width: 200.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Suyash Shrestha',
                        style: TextStyle(
                          color: Color(0xFF242424),
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        'Mobile Application Developer',
                        style: TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 12.0,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        height: 20.0,
                        width: 210.0,
                        child: Row(
                          children: [
                            Icon(
                              Icons.map_outlined,
                              color: Color(0xFF000000),
                              size: 15.0,
                            ),
                            SizedBox(
                              width: 12.0,
                            ),
                            Text(
                              'Tahachal, Kathmandu, Nepal',
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 10.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Text("The application is a multi vendor food",
                    style: TextStyle(
                      color: Color(0xFF010b13),
                      fontSize: 12.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    )),
                Text("delivery application which aims to ease",
                    style: TextStyle(
                      color: Color(0xFF010b13),
                      fontSize: 12.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    )),
                Text("out peoples job for food supply. The user",
                    style: TextStyle(
                      color: Color(0xFF010b13),
                      fontSize: 12.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    )),
                Text("can also add up their restaurant or any",
                    style: TextStyle(
                      color: Color(0xFF010b13),
                      fontSize: 12.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    )),
                Text("food  service facility along with the",
                    style: TextStyle(
                      color: Color(0xFF010b13),
                      fontSize: 12.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    )),
                Text("food menu.",
                    style: TextStyle(
                      color: Color(0xFF010b13),
                      fontSize: 12.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 40.0,
                ),
                Text("[NOTE: This is demo project]",
                    style: TextStyle(
                      color: Color(0xFF010b13),
                      fontSize: 12.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
