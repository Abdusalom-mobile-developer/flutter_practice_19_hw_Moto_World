import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _productCreator() {
    return Container(
      padding: EdgeInsets.all(23),
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage("assets/images/helmet.png"),
              fit: BoxFit.cover)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Icon(
            Icons.favorite,
            color: Colors.red[900],
            size: 40,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[400],
      appBar: AppBar(
        backgroundColor: Colors.orange[400],
        centerTitle: true,
        foregroundColor: Colors.black,
        title: Text(
          "Moto World",
          style: TextStyle(fontSize: 23),
        ),
        leading: Icon(
          Icons.menu,
          size: 32,
        ),
        actions: [
          Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(10)),
            child: TextButton(
                onPressed: () {},
                child: Text(
                  "9",
                  style: TextStyle(color: Colors.orange[400]),
                )),
          ),
          SizedBox(
            width: 9,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 13,
            ),
            Container(
              height: 230,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://i.pinimg.com/564x/13/8b/c5/138bc5bdd7954b3a53c21cfc1aebe68d.jpg"),
                      fit: BoxFit.cover)),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(colors: [
                      Colors.black54,
                      Colors.black45,
                      Colors.black38,
                      Colors.black54,
                    ], begin: Alignment.topRight)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Joy of Ride",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 33,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      margin: EdgeInsets.fromLTRB(55, 0, 55, 0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.orange[400]),
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Click for more",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          )),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
                child: GridView.count(
              crossAxisCount: 1,
              mainAxisSpacing: 15,
              children: [
                _productCreator(),
                _productCreator(),
                _productCreator(),
                _productCreator(),
                _productCreator(),
                _productCreator(),
                _productCreator()
              ],
            ))
          ],
        ),
      ),
    );
  }
}
