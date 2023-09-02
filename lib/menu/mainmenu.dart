import 'package:flutter/material.dart';
import 'package:menu_desgin/menu/my_drawer_header.dart';
import 'package:menu_desgin/menu/submenu/dashboard.dart';
import 'package:menu_desgin/menu/submenu/note.dart';
import 'package:menu_desgin/view/auth/sign_in_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    var currentPage = DrawerSections.dashbord;

@override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.dashbord) {
      container = const DashbordPage();
    } else if(currentPage == DrawerSections.contacts) {
      container = const DashbordPage();
    } else if(currentPage == DrawerSections.notes){
      container = const Notes();
    } else if(currentPage == DrawerSections.Logout){
      container = const SignInScreen();
    }
    return Scaffold(
      appBar: AppBar(
        // title: Text('sasa'),
        backgroundColor:const Color.fromARGB(255, 15, 13, 128),
        // title: Text("Home"),
        actions: const [
          Icon(Icons.notifications),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.language),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MyHeaderDrawer(),
              MyDrawerList(),
            ],
          ),
        ),
      ),
      body: container,
    );


  }

  // ignore: non_constant_identifier_names
  Widget MyDrawerList() {
    return Container(
      // ignore: prefer_const_constructors
      padding:  EdgeInsets.only(
        top: 15,
        ),
      child: Column(
        children: [
          menuItem(1, "For Enrollment", Icons.dashboard_outlined,
          currentPage == DrawerSections.dashbord ? true : false),
          menuItem(2, "Mange Enrollemnt", Icons.contacts_outlined,
          currentPage == DrawerSections.contacts ? true : false),
          menuItem(3, "Envents", Icons.calendar_month,
          currentPage == DrawerSections.events ? true : false),
          menuItem(4, "Calendar", Icons.calculate,
          currentPage == DrawerSections.notes ? true : false),
          menuItem(5, "Logout", Icons.logout_outlined,
          currentPage == DrawerSections.Logout ? true : false),
        ],

      ),
    );
  }
  Widget menuItem(int id , String title, IconData icon, bool selected){
    return Material(
      //      color: selected ? Colors.grey[300] : Color.fromARGB(0, 0, 0, 0),
      color: selected ? Colors.grey[300] : const Color.fromARGB(0, 0, 0, 0),
      child: InkWell(
        onTap:() {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.dashbord;
            } else if (id == 2){
              currentPage = DrawerSections.contacts;
            } else if (id == 3){
              currentPage = DrawerSections.events;
            } else if (id == 4){
              currentPage = DrawerSections.notes;
            } else if (id == 5){
              currentPage = DrawerSections.Logout;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    title,
                     style: const TextStyle(
                      color: Colors.black,
                       fontSize: 16,
                       ),
                       ),
                       ),
            ],
          ),
        ),
      ),

    );
  }
}


enum DrawerSections{
  dashbord,
  contacts,
  events,
  notes,
  settings,
  notifications,
  privacy_policy,
  Logout,
  send_feedback,
}