import 'package:flutter/material.dart';
import 'package:where_is_my_train/Screens/Constant.dart';
import 'package:where_is_my_train/Screens/Find_Train.dart';
import 'package:where_is_my_train/Screens/HomePageScreen.dart';
import 'package:where_is_my_train/Screens/Setting_Screen.dart';

class MyHeadDrawerList extends StatefulWidget {
  const MyHeadDrawerList({super.key});

  @override
  State<MyHeadDrawerList> createState() => _MyHeadDrawerListState();
}
var size,height,width;

class _MyHeadDrawerListState extends State<MyHeadDrawerList> {

  @override

  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Container(

      color: Colors.white,
      width: double.infinity,
      height:height*0.2,
      padding: EdgeInsets.only(top: 20.0),
      child:Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(

            margin: EdgeInsets.only(bottom: 18),
            height: height*0.5,
            width: width*0.3,

            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/images/train.png"),
                image: NetworkImage("https://rdfl.com.au/wp-content/uploads/2021/01/maxresdefault.jpg")

              ),
              border: Border.all(
                  width: 3,
                  color: Colors.white
              ),




            ),



          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Where is my Train",style: TextStyle(color: Colors.blue,fontSize: 20),),
              SizedBox(height:height*0.006,),
              Row(
                children: [
                  Text("from",style: TextStyle(color: Colors.brown,fontSize: 10),),
                  SizedBox(width: width*0.019 ,),
                  Text("Google",style: TextStyle(color: Colors.brown,fontSize: 20),),
                ],
              ),
            ],
          ),

        ],
      ) ,
    );
  }



}
var currentPage = DrawerSections.dashboard;
Widget  MyDrawerList(context){
  size = MediaQuery.of(context).size;
  height = size.height;
  width = size.width;

  return Container(
   height: height,


    color: Colors.blue[800],

    padding: EdgeInsets.only(top: 15,),
    child: Column(



      children: [
        menuItem(1,"Update Timetable",Icons.system_security_update_sharp,
            currentPage == DrawerSections.Upadate_Timetable ? true : false,context),
        menuItem(2,"Language",Icons.language,
            currentPage == DrawerSections.Language ? true : false,context),
        menuItem(3,"Change city",Icons.location_city,
            currentPage == DrawerSections.Change_city ? true : false,context),
        menuItem(4,"Clear Recent City",Icons.clear,
            currentPage == DrawerSections.clear_recent_city ? true : false,context),
        menuItem(5,"Setting",Icons.settings,
            currentPage == DrawerSections.settings ? true : false,context),
        menuItem(6,"Share App",Icons.share,
            currentPage == DrawerSections.shareapp ? true : false,context),
        menuItem(7,"Rate Us",Icons.rate_review,
            currentPage == DrawerSections.rate_us ? true : false,context),
        menuItem(8,"Report Issue",Icons.bug_report_outlined,
            currentPage == DrawerSections.send_feedback ? true : false,context),
        menuItem(9, "Suggest a feature",Icons.settings_suggest,
            currentPage == DrawerSections.suggest ? true : false, context),
        menuItem(10,"Invite Friends",Icons.person_add_alt_1_outlined,
            currentPage == DrawerSections.invite ? true : false,context),
        menuItem(11, "Share in Fcaebook",Icons.facebook,
            currentPage == DrawerSections.share ? true : false, context),




      ],

    ),

  );
}
Widget menuItem(int id , String title,IconData icon, bool selected,context){
  return Material(
    // color: selected ? Colors.grey[300] : Colors.transparent,
    color: Colors.blue[800],
    child: InkWell(
      onTap: (){
        // Navigator.pop(context);
        // setState(() {
        if (id == 1){
          currentPage = DrawerSections.dashboard;
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyHomePage(title: '',)));

        }else if (id == 2){
          currentPage= DrawerSections.contact;
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyHomePage(title: '',)));

        }
        else if (id == 3){
          currentPage= DrawerSections.event;
        }
        else if (id == 4){
          currentPage= DrawerSections.ClearRcity;
          print("Check Check1"+items.toString());
          // items.removeAt(name);
          items=[];
          print("Check Check2"+items.toString());
          // Navigator.of(context).pop();
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyHomePage(title: "Wre is my Train")));

        }
        else if (id == 5){
          currentPage= DrawerSections.settings;
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Setting_Screen()));

        }
        else if (id == 6){
          currentPage= DrawerSections.notifications;
        }
        else if (id == 7){
          currentPage= DrawerSections.privacy_policy;
        }
        else if (id == 8){
          currentPage= DrawerSections.send_feedback;
        }

        // });
      },
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Row(
          children: [
            Expanded(child:
            Icon(
              icon,
              size: 20,
              color: Colors.white,) ),
            Expanded(
                flex:3,
                child: Text(
                  title,style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,),))
          ],
        ),
      ),

    ),

  );
}
enum DrawerSections{
  dashboard,
  contact,
  event,
  notes,
  settings,
  notifications,
  privacy_policy,
  send_feedback, Upadate_Timetable, Language, Change_city, clear_recent_city, shareapp, rate_us, suggest, invite, share, ClearRcity
}

