import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xoffset = 0;
  double yoffset = 0;
  double scalefactor = 1;
  bool isdraweropen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xoffset, yoffset, 0)
        ..scale(scalefactor),
      duration: Duration(milliseconds: 250),
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                isdraweropen
                    ? IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        //kembali ke semula
                        onPressed: () {
                          setState(() {
                            xoffset = 0;
                            yoffset = 0;
                            scalefactor = 1;
                            isdraweropen = false;
                          });
                        },
                      )
                    : IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () {
                          setState(() {
                            xoffset = 230;
                            yoffset = 150;
                            scalefactor = 0.6;
                            isdraweropen = true;
                          });
                        },
                      ),
                Column(
                  children: [
                    Text("Location"),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.add_location, color: Colors.green),
                        ),
                        Text("Ciremai"),
                      ],
                    )
                  ],
                ),
                CircleAvatar(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
