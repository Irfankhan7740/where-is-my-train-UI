import 'package:flutter/material.dart';
import 'package:where_is_my_train/Screens/Constant.dart';
import 'package:where_is_my_train/Screens/Find_Train.dart';
import 'package:where_is_my_train/Screens/MyDrawerList.dart';
import 'package:where_is_my_train/Screens/Pnr_Screen.dart';
import 'package:where_is_my_train/Screens/Ticket_Screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[800],
        title: Text("Where is my Train"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Card(
                elevation: 3,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Container(
                    height: height * 0.2250,
                    width: width * .9,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 40, top: 10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.circle_outlined,
                                color: Colors.black12,
                                size: 15,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: height * 0.03,
                                width: width * 0.5,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'From Station',
                                    hintStyle: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Stack(clipBehavior: Clip.none, children: <Widget>[
                          const Divider(
                            // height: 2,
                            thickness: 1,
                            indent: 30,
                            endIndent: 30,
                            color: Colors.black,
                          ),
                          Positioned(
                            top: -7,
                            right: 80,
                            child: CircleAvatar(
                              radius: 16,
                              backgroundColor: Colors.black,
                              child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 15,
                                  child: Icon(
                                    Icons.thumbs_up_down_outlined,
                                    color: Colors.green,
                                    size: 16,
                                  )),
                            ),
                          ),
                        ]),
                        SizedBox(
                          height: height * .013,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 40,
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.circle_outlined,
                                  color: Colors.black12, size: 15),
                              SizedBox(
                                width: width * 0.03,
                              ),
                              Container(
                                height: height * 0.03,
                                width: width * 0.5,
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    hintText: 'To Station',
                                    hintStyle: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const Train_Location()),
                              );
                            },
                            child: Container(
                                height: height * 0.05,
                                width: width * 0.80,
                                decoration: new BoxDecoration(
                                  color: Colors.green,
                                  //new Color.fromRGBO(255, 0, 0, 0.0),
                                  borderRadius: new BorderRadius.circular(5),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Find trains",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                  ],
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Card(
              elevation: 1,
              child: Container(
                height: height * 0.06,
                width: width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        decoration: new BoxDecoration(
                          color: Colors.blue,
                          //new Color.fromRGBO(255, 0, 0, 0.0),
                          borderRadius: new BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(5, 2, 5, 3),
                          child: Text(
                            "12345",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        )),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    Text(
                      "Salasar SF Express",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      width: width * 0.09,
                    ),
                    Icon(
                      Icons.close_sharp,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    Container(
                        height: height * 0.05,
                        width: width * 0.11,
                        decoration: new BoxDecoration(
                          color: Colors.green,
                          //new Color.fromRGBO(255, 0, 0, 0.0),
                          borderRadius: new BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(7),
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                        ))
                  ],
                ),
              ),
            ),
            Card(
              elevation: 1,
              child: Container(
                height: height * 0.06,
                width: width,
                child: Row(
                  children: [
                    Icon(
                      Icons.wifi_tethering,
                      color: Colors.blueAccent,
                      size: 40,
                    ),
                    SizedBox(
                      width: width * 0.04,
                    ),
                    Text(
                      "Station Departure Board",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      width: width * 0.15,
                    ),
                    Container(
                        height: height * 0.05,
                        width: width * 0.11,
                        decoration: new BoxDecoration(
                          color: Colors.green,
                          //new Color.fromRGBO(255, 0, 0, 0.0),
                          borderRadius: new BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(7),
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                        ))
                  ],
                ),
              ),
            ),
            Card(
              elevation: 2,
              color: Colors.white,
              child: Container(
                  height: height*0.3944,
                  width: width * 0.95,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(items.isEmpty ? "" : "Search History",
                          style: TextStyle(color: Colors.blue, fontSize: 22),
                          textAlign: TextAlign.center),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: ListView.builder(
                        itemCount: items.length,
                        physics: AlwaysScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(
                              items[index]["name"],
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                            trailing: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Colors.green,
                                )),
                          );
                        },
                      ),
                      ),
                    ],
                  )),
            ),



            /*Container(
              height: height*0.08,
              width: width,
              color: Colors.blueGrey[100],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Icon(Icons.search,color: Colors.blue,),
                  Text("PNR",style: TextStyle(color: Colors.blue),),
                  SizedBox(width: 75,),
                  const VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                    indent: 0,
                    endIndent: 0,
                    width: 20,
                  ),
                  SizedBox(width: 75,),
                  Icon(Icons.try_sms_star,color: Colors.blue,),
                  Text("TICKETS",style: TextStyle(color: Colors.blue),
                  )

                ],


              ),
            ),*/
            Container(
              color: Colors.black45,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Pnr_Screen()),
                      );
                    },
                    child: Container(
                        height: height * 0.06,
                        width: width * 0.497,
                        color: Colors.blueGrey[100],
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.search,
                              color: Colors.blue,
                            ),
                            Text(
                              "PNR",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        )),
                  ),
                  const VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                    indent: 0,
                    endIndent: 0,
                    width: 1,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Ticket_Screen()),
                      );
                    },
                    child: Container(
                        height: height * 0.06,
                        width: width * 0.497,
                        color: Colors.blueGrey[100],
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.try_sms_star,
                              color: Colors.blue,
                            ),
                            Text(
                              "TICKETS",
                              style: TextStyle(color: Colors.blue),
                            )
                          ],
                        )),
                  ),
                ],
              ),
            )],
        ),
      ),

      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              MyHeadDrawerList(),
              MyDrawerList(context),
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
