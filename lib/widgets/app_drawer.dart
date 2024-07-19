import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Container(
              margin: EdgeInsets.only(top: 10),
              child: Text('USER USER',style: TextStyle(fontSize: 20),),
            ),
            accountEmail: Text('user@gmail.com',style: TextStyle(fontSize: 17),),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/images/img.png'),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            leading: Icon(Icons.public),
            title: Text('Posts'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/resources');
            },
          ),
          ListTile(
            leading: Icon(Icons.photo),
            title: Text('Photo'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/photo');
            },
          ),
          ListTile(
            leading: Icon(Icons.camera),
            title: Text('Camera View'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/camera');
            },
          ),
          ListTile(
            leading: Icon(Icons.calculate),
            title: Text('Calculator'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/calculator');
            },
          ),
          ListTile(
            leading: Icon(Icons.check_box),
            title: Text('To-Do List'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/todo');
            },
          ),
        ],
      ),
    );
  }
}
