import 'package:flutter/material.dart';
class Setting_Screen extends StatefulWidget {
  const Setting_Screen({super.key});

  @override
  State<Setting_Screen> createState() => _Setting_ScreenState();
}

class _Setting_ScreenState extends State<Setting_Screen> {
  var size,height,width;
  bool forAndroid = true ;
  bool forAndroid1 = true ;
  bool forAndroid2 = true ;
  bool forAndroid3 = true ;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return SafeArea(
      child: Scaffold(
        
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10,top: 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height*0.03,),
                Text('Personal',style: TextStyle(color: Colors.blue,fontSize: 20),),
                SizedBox(height: height*0.03,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Language',style: TextStyle(color: Colors.black,fontSize: 23),

                    ),
                    Text('Choose your Language',style: TextStyle(color: Colors.black45,fontSize: 18),

                    )

                  ],
                ),
                SizedBox(height: height*0.03,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Time Settings',style: TextStyle(color: Colors.black,fontSize: 23),

                        ),
                        Text('AM/PM format time',style: TextStyle(color: Colors.black45,fontSize: 18),

                        )

                      ],
                    ),

                    Switch(

                      // thumb color (round icon)
                      activeColor: Colors.blueAccent,
                      activeTrackColor: Colors.blue[100],
                      inactiveThumbColor: Colors.blueGrey.shade600,
                      inactiveTrackColor: Colors.grey.shade400,
                      splashRadius: 50.0,
                      // boolean variable value
                      value: forAndroid,
                      // changes the state of the switch
                      onChanged: (value) => setState(() => forAndroid = value),
                    ),
                  ],
                ),
                SizedBox(height: height*0.03,),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Are you inside train option',style: TextStyle(color: Colors.black,fontSize: 23),

                        ),
                        Text('Suggest Are you inside train option',style: TextStyle(color: Colors.black45,fontSize: 18),

                        )

                      ],
                    ),
                    SizedBox(width: width*0.11,),
                    Switch(
                      // thumb color (round icon)
                      activeColor: Colors.blueAccent,
                      activeTrackColor: Colors.blue[100],
                      inactiveThumbColor: Colors.blueGrey.shade600,
                      inactiveTrackColor: Colors.grey.shade400,
                      splashRadius: 50.0,
                      // boolean variable value
                      value: forAndroid1,
                      // changes the state of the switch
                      onChanged: (value) => setState(() => forAndroid1 = value),
                    ),
                  ],
                ),
                SizedBox(height: height*0.01,),
                const Divider(
                  // height: 2,
                  thickness: 1,
                  indent: 0,
                  endIndent: 0,
                  color: Colors.black54,
                ),
                SizedBox(height: height*0.01,),
                Container(
                  child:
                  Text('Spot Settings',style: TextStyle(color: Colors.blue,fontSize: 20),),
                ),
                SizedBox(height: height*0.02,),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Spot Notifications',style: TextStyle(color: Colors.black,fontSize: 23),

                        ),
                        Text('Your location information as a standing\nnotification',style: TextStyle(color: Colors.black45,fontSize: 18),

                        )

                      ],
                    ),
                    SizedBox(width: width*0.0150,),
                    Switch(
                      // thumb color (round icon)
                      activeColor: Colors.blueAccent,
                      activeTrackColor: Colors.blue[100],
                      inactiveThumbColor: Colors.blueGrey.shade600,
                      inactiveTrackColor: Colors.grey.shade400,
                      splashRadius: 50.0,
                      // boolean variable value
                      value: forAndroid2,
                      // changes the state of the switch
                      onChanged: (value) => setState(() => forAndroid2 = value),
                    ),
                  ],
                ),
                SizedBox(height: height*0.02,),
                const Divider(
                  // height: 2,
                  thickness: 1,
                  indent: 0,
                  endIndent: 0,
                  color: Colors.black54,
                ),
                SizedBox(height: height*0.01,),
                Container(
                  child:
                  Text('Speedometer Settings',style: TextStyle(color: Colors.blue,fontSize: 20),),
                ),
                SizedBox(height: height*0.02,),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Speedometer(Beta)',style: TextStyle(color: Colors.black,fontSize: 23),

                        ),
                        Text('Slow Speedometer in GPS mode',style: TextStyle(color: Colors.black45,fontSize: 18),

                        )

                      ],
                    ),
                    SizedBox(width: width*0.1560,),
                    Switch(

                      // thumb color (round icon)
                      activeColor: Colors.blueAccent,
                      activeTrackColor: Colors.blue[100],
                      inactiveThumbColor: Colors.blueGrey.shade600,
                      inactiveTrackColor: Colors.grey.shade400,
                      splashRadius: 50.0,
                      // boolean variable value
                      value: forAndroid3,
                      // changes the state of the switch
                      onChanged: (value) => setState(() => forAndroid3 = value),
                    ),
                  ],
                ),
                SizedBox(height: height*0.02,),
                const Divider(
                  // height: 2,
                  thickness: 1,
                  indent: 0,
                  endIndent: 0,
                  color: Colors.black54,
                ),
                SizedBox(height: height*0.01,),

                Container(
                  child:
                  Text('Alarm Settings',style: TextStyle(color: Colors.blue,fontSize: 20),),
                ),
                SizedBox(height: height*0.02,),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Alarm tone)',style: TextStyle(color: Colors.black,fontSize: 23),

                        ),
                        Text('Choose alarm tone',style: TextStyle(color: Colors.black45,fontSize: 18),

                        )

                      ],
                    ),

                  ],
                ),
                SizedBox(height: height*0.02,),
                const Divider(
                  // height: 2,
                  thickness: 1,
                  indent: 0,
                  endIndent: 0,
                  color: Colors.black54,
                ),
                SizedBox(height: height*0.01,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child:
                      Text('About',style: TextStyle(color: Colors.blue,fontSize: 20),),
                    ),
                    SizedBox(height: height*0.03,),
                    Text('Term of use and privacy policy',style: TextStyle(color: Colors.black,fontSize: 23),),
                    SizedBox(height: height*0.03,),
                    Text('Open source licenses ',style: TextStyle(color: Colors.black,fontSize: 23),),

                    Text('License detail for open source softwares ',style: TextStyle(color: Colors.black54,fontSize: 18),),
                    SizedBox(height: height*0.03,),
                    Text('App Versions ',style: TextStyle(color: Colors.black,fontSize: 23),),
                    Text('9.1.0.7740806728',style: TextStyle(color: Colors.black,fontSize: 18),),
                  ],
                ),
              ],
            ),
          ),
        ),

      ),
    );
  }
}
