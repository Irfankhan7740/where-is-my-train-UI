import 'package:flutter/material.dart';
import 'package:where_is_my_train/Screens/LiveTrain_Location.dart';

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

class Train_Location extends StatefulWidget {
  const Train_Location({super.key});

  @override
  State<Train_Location> createState() => _Train_LocationState();
}

var size, height, width;

class _Train_LocationState extends State<Train_Location> {
  SampleItem? selectedMenu;
  SingingCharacter? _character = SingingCharacter.lafayette;
  bool isChange = true;

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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              child: Container(
                height: height * 0.038,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.blueAccent,
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(7, 2, 2, 2),
                  child: Row(
                    children: [
                      Text(
                        "All Dates",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      Icon(
                        Icons.arrow_drop_down_outlined,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        content: StatefulBuilder(
                            // You need this, notice the parameters below:
                            builder:
                                (BuildContext context, StateSetter setState) {
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                height: height * 0.13,
                                width: width,
                                color: Colors.blueAccent,
                                child: Column(children: [
                                  Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          right: 10, left: 15, top: 15),
                                      child: Text(
                                        'Choose the date when the train start from',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          right: 15, left: 15, top: 0),
                                      child: Text(
                                        'Jodhpur',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.white),
                                      ),
                                    ),
                                  )
                                ]),
                              ),
                              Column(
                                children: [
                                  Column(
                                    children: <Widget>[
                                      ListTile(
                                        title: const Text('All Date'),
                                        leading: Radio<SingingCharacter>(
                                          value: SingingCharacter.lafayette,
                                          groupValue: _character,
                                          onChanged: (SingingCharacter? value) {
                                            setState(() {
                                              _character = value;
                                            });
                                          },
                                        ),
                                      ),
                                      ListTile(
                                        title: const Text('Today'),
                                        leading: Radio<SingingCharacter>(
                                          value: SingingCharacter.Today,
                                          groupValue: _character,
                                          onChanged: (SingingCharacter? value) {
                                            setState(() {
                                              _character = value;
                                            });
                                          },
                                        ),
                                      ),
                                      ListTile(
                                        title: const Text('Tommorrow'),
                                        leading: Radio<SingingCharacter>(
                                          value: SingingCharacter.Tommorow,
                                          groupValue: _character,
                                          onChanged: (SingingCharacter? value) {
                                            setState(() {
                                              _character = value;
                                            });
                                          },
                                        ),
                                      ),
                                      ListTile(
                                        title:
                                            const Text('Choose from Celendar'),
                                        leading: Radio<SingingCharacter>(
                                          value: SingingCharacter.Calender,
                                          groupValue: _character,
                                          onChanged: (SingingCharacter? value) {
                                            setState(() {
                                              _character = value;
                                            });
                                          },
                                        ),
                                      ),
                                      const Divider(
                                        // height: 2,
                                        thickness: 1,
                                        indent: 1,
                                        endIndent: 1,
                                        color: Colors.black45,
                                      ),
                                    ],
                                  ),
                                  Card(
                                    elevation: 1,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        height: height * 0.05,
                                        child: Center(
                                            child: Text(
                                          "Cancel",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15),
                                        )),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          );
                        }),
                      );
                    });
              },
            ),

            SizedBox(
              width: width * 0.025,
            ),
            InkWell(
              child: Container(
                height: height * 0.038,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.blueAccent,
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(7, 2, 2, 2),
                  child: Row(
                    children: [
                      Text(
                        "GN-Unresevd",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      Icon(
                        Icons.arrow_drop_down_outlined,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        content: StatefulBuilder(
                            // You need this, notice the parameters below:
                            builder:
                                (BuildContext context, StateSetter setState) {
                          return SingleChildScrollView(
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    height: height * 0.07,
                                    width: width,
                                    color: Colors.blueAccent,
                                    child: Column(children: [
                                      Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              right: 10, left: 15, top: 15),
                                          child: Text(
                                            "Choose fare class",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                    ]),
                                  ),
                                  Column(
                                    children: [
                                      Column(
                                        children: <Widget>[
                                          ListTile(
                                            title:
                                                const Text('GN - Unreserved'),
                                            leading: Radio<SingingCharacter>(
                                              value: SingingCharacter.gn,
                                              groupValue: _character,
                                              onChanged:
                                                  (SingingCharacter? value) {
                                                setState(() {
                                                  _character = value;
                                                });
                                              },
                                            ),
                                          ),
                                          ListTile(
                                            title: const Text('SL - Sleeper'),
                                            leading: Radio<SingingCharacter>(
                                              value: SingingCharacter.sl,
                                              groupValue: _character,
                                              onChanged:
                                                  (SingingCharacter? value) {
                                                setState(() {
                                                  _character = value;
                                                });
                                              },
                                            ),
                                          ),
                                          ListTile(
                                            title: const Text('3A - AC3-Tier'),
                                            leading: Radio<SingingCharacter>(
                                              value: SingingCharacter.a3AC,
                                              groupValue: _character,
                                              onChanged:
                                                  (SingingCharacter? value) {
                                                setState(() {
                                                  _character = value;
                                                });
                                              },
                                            ),
                                          ),
                                          ListTile(
                                            title: const Text('2A - AC 2-Tier'),
                                            leading: Radio<SingingCharacter>(
                                              value: SingingCharacter.a2,
                                              groupValue: _character,
                                              onChanged:
                                                  (SingingCharacter? value) {
                                                setState(() {
                                                  _character = value;
                                                });
                                              },
                                            ),
                                          ),
                                          ListTile(
                                            title: const Text(
                                                '1A - First Class AC'),
                                            leading: Radio<SingingCharacter>(
                                              value: SingingCharacter.a1ac,
                                              groupValue: _character,
                                              onChanged:
                                                  (SingingCharacter? value) {
                                                setState(() {
                                                  _character = value;
                                                });
                                              },
                                            ),
                                          ),
                                          ListTile(
                                            title:
                                                const Text('CC - AC Chair Car'),
                                            leading: Radio<SingingCharacter>(
                                              value: SingingCharacter.ccac,
                                              groupValue: _character,
                                              onChanged:
                                                  (SingingCharacter? value) {
                                                setState(() {
                                                  _character = value;
                                                });
                                              },
                                            ),
                                          ),
                                          ListTile(
                                            title: const Text(
                                                'EC - Excutive Chair Car'),
                                            leading: Radio<SingingCharacter>(
                                              value: SingingCharacter.excutive,
                                              groupValue: _character,
                                              onChanged:
                                                  (SingingCharacter? value) {
                                                setState(() {
                                                  _character = value;
                                                });
                                              },
                                            ),
                                          ),
                                          ListTile(
                                            title: const Text(
                                                'EA - Excutive Anubhuti'),
                                            leading: Radio<SingingCharacter>(
                                              value: SingingCharacter.Anubhuti,
                                              groupValue: _character,
                                              onChanged:
                                                  (SingingCharacter? value) {
                                                setState(() {
                                                  _character = value;
                                                });
                                              },
                                            ),
                                          ),
                                          ListTile(
                                            title: const Text(
                                                '2A - Second Sitting'),
                                            leading: Radio<SingingCharacter>(
                                              value: SingingCharacter.secondsit,
                                              groupValue: _character,
                                              onChanged:
                                                  (SingingCharacter? value) {
                                                setState(() {
                                                  _character = value;
                                                });
                                              },
                                            ),
                                          ),
                                          ListTile(
                                            title:
                                                const Text('FC - First Class'),
                                            leading: Radio<SingingCharacter>(
                                              value:
                                                  SingingCharacter.firstclass,
                                              groupValue: _character,
                                              onChanged:
                                                  (SingingCharacter? value) {
                                                setState(() {
                                                  _character = value;
                                                });
                                              },
                                            ),
                                          ),
                                          const Divider(
                                            // height: 2,
                                            thickness: 1,
                                            indent: 1,
                                            endIndent: 1,
                                            color: Colors.black45,
                                          ),
                                        ],
                                      ),
                                      Card(
                                        elevation: 1,
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: Container(
                                            height: height * 0.05,
                                            child: Center(
                                                child: Text(
                                              "Cancel",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15),
                                            )),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ]),
                          );
                        }),
                      );
                    });
              },
            ),

            //Text("GN-Unreseved",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            // Icon(Icons.arrow_drop_down_outlined,color: Colors.white,),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 14),
            child: Container(
              height: 60,
              color: Colors.blue[800],
              child: (Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Ju- Jodhpur \n  Junction',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    InkWell(
                        onTap: () {
                          isChange = !isChange;
                        },
                        child: Icon(
                            isChange == true
                                ? Icons.east_rounded
                                : Icons.e_mobiledata,
                            size: 20,
                            color: Colors.white)),
                    Text(
                      'Jp- Jaipur Junction',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ])),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 14,
              itemBuilder: (context, index) {
                return ListTile(
                  title: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => LiveTrain_Location()));
                    },
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  color: Colors.blueAccent,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2),
                                  child: Text(
                                    " 12345 ",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              Text(
                                "1:45 AM ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w800),
                              ),
                              Icon(Icons.east_rounded,
                                  size: 20, color: Colors.black),
                              Text(
                                " 1:45 AM ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w800),
                              ),
                              Text(
                                " ₹ 125",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w800),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            'Malani SF Express',
                            style:
                                TextStyle(color: Colors.black54, fontSize: 20),
                          ),
                          SizedBox(height: 3),
                          Text(
                            'Not returning today',
                            style:
                                TextStyle(color: Colors.black54, fontSize: 15),
                          ),
                          const Divider(
                            // height: 2,
                            thickness: 0.5,
                            indent: 0,
                            endIndent: 0,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
