import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('My Profile'),

      ),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
            children: <Widget>[


              Row(
                children: <Widget>[
                  CircleAvatar(
                    maxRadius: 40,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                    backgroundColor: Colors.transparent,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                  Text('Juwel Maria',style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold),),
                  Text('@juwel',style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold),),
                  ],
                  ),
                ],

              ),
              SizedBox(height: 20,),
              Row(
                children: <Widget>[

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Settings',style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold),),
                  ),

                ],

              ),

            ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,

              children: <Widget>[
                ListTile(
                  title: Text('Personal Info',style: TextStyle(fontStyle: FontStyle.normal),),
                  trailing: Icon(Icons.arrow_forward_ios),

                ),
                ListTile(
                  title: Text('Preference',style: TextStyle(fontStyle: FontStyle.normal),),
                  trailing: Icon(Icons.arrow_forward_ios),

                ),
                ListTile(
                  title: Text('Contact',style: TextStyle(fontStyle: FontStyle.normal),),
                  trailing: Icon(Icons.arrow_forward_ios),

                ),
                ListTile(
                  title: Text('Change Password',style: TextStyle(fontStyle: FontStyle.normal),),
                  trailing: Icon(Icons.arrow_forward_ios),

                )

              ],
            )

            ],
            ),



          )),



    );
  }
}
