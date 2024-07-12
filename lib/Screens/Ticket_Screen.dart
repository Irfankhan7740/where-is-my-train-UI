import 'package:flutter/material.dart';
import 'package:where_is_my_train/Screens/Constant.dart';
import 'package:where_is_my_train/Screens/Find_Train.dart';

const List<String> list = <String>[
  'General Quota',
  'Tatkal',
  'Ladies',

];

enum SampleItem { itemOne, itemTwo, itemThree, itemFive, itemFour }

class Ticket_Screen extends StatefulWidget {
  const Ticket_Screen({super.key});

  @override
  State<Ticket_Screen> createState() => _Ticket_ScreenState();
}

// var size, height, width;

class _Ticket_ScreenState extends State<Ticket_Screen> {
  TextEditingController _textEditingController=TextEditingController();
  SampleItem? selectedMenu;
  String dropdownValue = list.first;

  DateTime _dateTime = DateTime.now();



  @override
  Widget build(BuildContext context) {
    // size = MediaQuery.of(context).size;
    // height = size.height;
    // width = size.width;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue[800],
          actions: [
            PopupMenuButton<SampleItem>(
              initialValue: selectedMenu,
              // Callback that sets the selected popup menu item.
              onSelected: (SampleItem item) {
                setState(() {
                  selectedMenu = item;
                });
              },
              itemBuilder: (BuildContext context) =>
                  <PopupMenuEntry<SampleItem>>[
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
          leading: const BackButton(color: Colors.white),
          title: const Text(
            "TICKETS",
          )),
      body:
      SingleChildScrollView(
        child: Column(
          
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Card(
                elevation: 3,
                color: Colors.white,
                child: Padding(
                  // padding: EdgeInsets.only(bottom:MediaQuery.of(context).size.width/10),
                  padding: const EdgeInsets.only(bottom: 0.5, top: 5),
                  child: Container(
                    height: height * 0.54,
                    width: width * .95,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.circle_outlined,
                                color: Colors.black12,
                                size: 15,
                              ),
                              SizedBox(
                                width: width * 0.05,
                              ),
                              Container(
                                  height: height * 0.03,
                                  width: width * 0.08,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    //new Color.fromRGBO(255, 0, 0, 0.0),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.only(bottom: 2),
                                    child: Center(
                                      child: Text(
                                        'JU',
                                        style: TextStyle(
                                            fontSize: 17.0,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontStyle: FontStyle.normal),
                                      ),
                                    ),
                                  )),
                              Expanded(
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    hintText: 'Jodhpur ',
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
                        const Stack(clipBehavior: Clip.none, children: <Widget>[
                          Divider(
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

                        Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          child: Row(
                            children: [
                              const Icon(Icons.circle_outlined,
                                  color: Colors.black12, size: 15),
                              SizedBox(
                                width: width * 0.03,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    height: height * 0.03,
                                    width: width * 0.08,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      //new Color.fromRGBO(255, 0, 0, 0.0),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'JU',
                                        style: TextStyle(
                                            fontSize: 17.0,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontStyle: FontStyle.normal),
                                      ),
                                    )),
                              ),
                              SizedBox(
                                width: width * 0.0001,
                              ),
                              Expanded(
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    hintText: 'Jaipur Junction',
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
                        const Divider(
                          // height: 2,
                          thickness: 1,
                          indent: 0,
                          endIndent: 0,
                          color: Colors.black,
                        ),


                        Padding(
                          padding: const EdgeInsets.all(1.5),
                          child: Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.calendar_month_outlined,
                                      color: Colors.blue,
                                      size: 15,
                                    ),
                                    SizedBox(
                                      width: width * 0.01,
                                    ),
                                    const Text(
                                      "Journey Date",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ],
                                ),
                                TextFormField(

                                  controller: _textEditingController,
                                  readOnly: true,
                                  onTap: (){
                                    showDatePicker(context: context,
                                        initialDate: DateTime.now(), 
                                        firstDate: DateTime(1998),
                                         lastDate: DateTime(2025)).then((value){

                                          setState(() {
                                            _dateTime=value! ;
                                            _textEditingController.text= '${_dateTime.day}/${_dateTime.month}/${_dateTime.year}';
                                          });
                                    });
                                  },
                                  decoration: const InputDecoration(prefixIcon: Expanded(child: SizedBox()),
                                    border: OutlineInputBorder(
                                      borderSide:  BorderSide.none
                                    ),
                                    hintText: 'Select a journey date',
                                    hintStyle:
                                       TextStyle(
                                          color: Colors.black54,
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal),

                                  ),

                                )
                                /*Text(
                                  "Select a journey date",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal),
                                ),*/
                              ],
                            ),
                          ),
                        ),
                        // Text("Select a journey date",style: TextStyle(color: Colors.black54,fontSize: 20,fontWeight: FontWeight.normal),),

                        const Divider(
                          // height: 2,
                          thickness: 1,
                          indent: 0,
                          endIndent: 0,
                          color: Colors.black,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            height: 100,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.access_time_filled_rounded,
                                      color: Colors.blue,
                                      size: 15,
                                    ),
                                    SizedBox(
                                      width: width * 0.01,
                                    ),
                                    const Text(
                                      "Quota",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: height * 0.002,
                                ),


                                Container(

                                  width: width*0.8,
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton<String>(
                                      icon: const  Icon(Icons.arrow_drop_down_outlined,color: Colors.black54,),


                                      elevation: 16,
                                      style: const TextStyle(
                                          color: Colors.deepPurple),
                                      value: dropdownValue,
                                      underline: Container(
                                        height: 1,
                                        color: Colors.deepPurpleAccent,
                                      ),
                                      onChanged: (String? value) {
                                        // This is called when the user selects an item.
                                        setState(() {
                                          dropdownValue = value!;
                                        });
                                      },
                                      items: list.map<DropdownMenuItem<String>>(
                                              (String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Row(
                                                children: [
                                                  Container(
                                                      height: height*0.03,
                                                      width: width*0.12,
                                                      color: Colors.blue,
                                                      child: Center(child: Text(
                                                        value == 'General Quota'
                                                            ?"GN"
                                                            :value == 'Tatkal'
                                                            ?"TQ"
                                                            :value == 'Ladies'
                                                            ?"LD"
                                                            :"",
                                                        style: const TextStyle(
                                                            color: Colors.white,
                                                            fontWeight: FontWeight.normal),))),
                                                  SizedBox(width: width*0.06,),
                                                  Text(value),
                                                ],
                                              ),
                                            );
                                          }).toList(),

                                      /*Row(
                                          children: [
                                            Container(
                                              height: height*0.03,
                                              width: width*0.12,
                                              color: Colors.blue,
                                                child: Center(child: Text("GN",style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal),))),
                                            SizedBox(width: width*0.06,),
                                            Text("General Quota",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.normal),),
                                            SizedBox(width: width *0.35,),
                                            Icon(Icons.arrow_drop_down_outlined,color: Colors.black54,),

                                          ],
                                        ),*/
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
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
                                        height: height * 0.031,
                                        width: width,
                                        decoration: BoxDecoration(
                                          color: Colors.green,
                                          //new Color.fromRGBO(255, 0, 0, 0.0),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Center(
                                                child: Text(
                                              "Book tickets on Confirmtkt",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20),
                                            )),
                                            SizedBox(
                                              width: width * 0.07,
                                            ),
                                            const Icon(
                                              Icons.arrow_forward_ios_outlined,
                                              color: Colors.white,
                                              size: 16,
                                            )
                                          ],
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 1,
              child: Container(
                height: height * 0.06,
                width: width * 0.95,
                child: Row(
                  children: [
                    const Icon(
                      Icons.airplane_ticket_outlined,
                      color: Colors.blueAccent,
                      size: 40,
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    const Text(
                      "Your ticket on Confirmtkt",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      width: width * 0.15,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.black45,
                      size: 16,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
