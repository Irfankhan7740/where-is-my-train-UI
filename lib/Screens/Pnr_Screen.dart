import 'package:flutter/material.dart';
import 'package:where_is_my_train/Screens/Find_Train.dart';
enum SampleItem { itemOne, itemTwo, itemThree, itemFour, itemFive }

class Pnr_Screen extends StatefulWidget {
  const Pnr_Screen({super.key});

  @override
  State<Pnr_Screen> createState() => _Pnr_ScreenState();
}
var size,height,width;

class _Pnr_ScreenState extends State<Pnr_Screen> {
  SampleItem? selectedMenu;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar:AppBar (
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
        leading: BackButton(
            color: Colors.white
        ),
        title:  Text( "PNR",)



      ),
      body: Column(
          children: [
      Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Card(

        elevation: 3,

        color: Colors.white,
        child: Container(
          height: height*0.16,
          width:width*0.94,


          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                child: Row(
                  children: [
                    SizedBox(height: 10,),

                    Container(
                      height: height*0.03,
                      width: width*0.5,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: TextFormField(
                          textAlign: TextAlign.end,
                          decoration:  InputDecoration(
                            hintText: 'Enter Your PNR No',
                            hintStyle: TextStyle(fontSize: 20.0, color: Colors.black45,fontWeight: FontWeight.w400,fontStyle: FontStyle.normal),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,

                            ),
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
                indent: 12,
                endIndent: 12,
                color: Colors.black,
              ),


              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Train_Location()),
                    );
                  },
                  child: Container(

                      height: height*0.05,
                      width: width,
                      decoration: new BoxDecoration(
                        color: Colors.green, //new Color.fromRGBO(255, 0, 0, 0.0),
                        borderRadius: new BorderRadius.circular(5

                        ),
                      ),





                      child: Row(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Find PNR Status",style: TextStyle(color: Colors.white,fontSize: 20),),],
                      )),
                ),
              ),






            ],
          ),
        ),
      ),
    ),
            Card(
              elevation: 1,
              child: Container(
                height: height*0.06,
                width: width,


                child: Row(
                  children: [
                    Icon(Icons.airplane_ticket_outlined,color: Colors.blueAccent,size:40,),
                    SizedBox(width: width*0.05,),
                    Text("Your ticket on Confirmtkt",style: TextStyle(color: Colors.blue,fontSize: 20,),),

                    SizedBox(width: width*0.15,),

                    Icon(Icons.arrow_forward_ios_outlined,color: Colors.black45,)



                  ],
                ),
              ),
            ),
    ]
    )
    );}
}
