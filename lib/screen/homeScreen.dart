import 'package:flutter/material.dart';
import 'package:pet_app/config/configuration.dart';

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
          SizedBox(height: 50),
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
                          icon: Icon(Icons.add_location, color: primarycolor),
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
          Container(
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  borderSide: BorderSide(color: primarycolor),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: primarycolor,
                ),
                hintText: "Search Pet",
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 40.0),
          ),
          Container(height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Column(
                    children: [
                      Container(
                    
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: listShadow,
                          borderRadius: BorderRadius.circular(10),

                        ),
                        child: Image.asset(categories[index]['iconPath'], height: 50,width: 50,),
                      ),
                      Text(categories[index]['name']),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
