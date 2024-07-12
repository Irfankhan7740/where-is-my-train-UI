import 'package:flutter/material.dart';
import 'package:where_is_my_train/Screens/Constant.dart';

enum SingingCharacter {
  lafayette,
  jefferson,
  Tommorow,
  Today,
  Calender,
  gn,
  sl,
  a3AC,
  a2,
  a1ac,
  ccac,
  excutive,
  Anubhuti,
  secondsit,
  firstclass
}

enum SampleItem { itemOne, itemTwo, itemThree, itemFour, itemFive }

class LiveTrain_Location extends StatefulWidget {
  const LiveTrain_Location({super.key});

  @override
  State<LiveTrain_Location> createState() => _LiveTrain_LocationState();
}

var size, height, width;

class _LiveTrain_LocationState extends State<LiveTrain_Location> {
  SampleItem? selectedMenu;
  SingingCharacter? _character = SingingCharacter.lafayette;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.white),
        backgroundColor: Colors.blue[800],
        elevation: 2,
        actions: [
          PopupMenuButton<SampleItem>(
            initialValue: selectedMenu,
            // Callback that sets the selected popup menu item.
            onSelected: (SampleItem item) {
              setState(() {
                selectedMenu = item;
              });
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
              const PopupMenuItem<SampleItem>(
                value: SampleItem.itemOne,
                child: Text("Share"),
              ),
              const PopupMenuItem<SampleItem>(
                value: SampleItem.itemTwo,
                child: Text('Language'),
              ),
              const PopupMenuItem<SampleItem>(
                value: SampleItem.itemThree,
                child: Text('Report Issue'),
              ),
              const PopupMenuItem<SampleItem>(
                value: SampleItem.itemFour,
                child: Text('Settings'),
              ),
              const PopupMenuItem<SampleItem>(
                value: SampleItem.itemFive,
                child: Text('Rate Us'),
              ),
            ],
          ),
        ],
        title: Column(
          children: [
            Text(
              '12307-Jodhpur Superfast Express...',
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 60,
            color: Colors.blue[800],
            child: (Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(7, 2, 2, 2),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Container(
                              height: height * 0.04,
                              width: width * 0.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.white,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(width:width*0.03,),
                                  Text(
                                    "Yesterday",
                                    style: TextStyle(
                                        color: Colors.blue[800],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Icon(
                                    Icons.arrow_drop_down_outlined,
                                    color: Colors.blue[800],
                                  ),
                                ],
                              )),
                        ),
                        Icon(
                          Icons.alarm,
                          size: 27,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        Icon(
                          Icons.airline_seat_recline_extra_outlined,
                          size: 27,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: width * 0.06,
                        ),
                        Icon(
                          Icons.share,
                          size: 27,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ])),
          ),
          Container(
            height: height * 0.05,
            color: Colors.black54,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Arrival",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "Day 1-Nov 09,Thu",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "Departure",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: times.length,
                physics: AlwaysScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(


                              children: [




                            Text(
                              times[index]["timetable"],
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),

                            ),
                                SizedBox(height: 130,)



                          ]),

                          Column(children: [

                            Text(
                              times[index]["stationname"],
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  times[index]["km"],
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(width: 7,),
                                Card(
                                  elevation: 2,
                                  child: Container(
                                    height: height * 0.035,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: Colors.white38,

                                    ),
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(7, 2, 2, 2),
                                      child: Row(
                                        children: [
                                          Text(
                                            "ADD",
                                            style: TextStyle(
                                                color: Colors.blueAccent,
                                                fontWeight: FontWeight.normal,
                                                fontSize: 20),
                                          ),
                                          Icon(
                                            Icons.brush_outlined,
                                            color: Colors.blueAccent,
                                            size: 23,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                            SizedBox(height: 100,),

                          ]),

                          Column(
                            children: [
                              Text(
                                times[index]["timetableS"],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 130,),
                            ],
                          ),


                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
