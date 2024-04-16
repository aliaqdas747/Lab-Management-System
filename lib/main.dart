import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Laboratory Management System',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Laboratory Management System',),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
          drawer: Drawer(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: [
                  DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Admin',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                        Text(
                          'Sufyan.dev@gmail.com',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Dashboard'),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.supervisor_account_sharp),
                    title: Text('Accounts'),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.contact_phone_outlined),
                    title: Text('Contacts'),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.work),
                    title: Text('Projects'),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.eyeDropper
                    ),
                    title: Text('Test Orders'),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading:Icon(Icons.auto_graph),
                    title: Text('Test Analysis'),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                  leading: Icon(Icons.report_gmailerrorred),
                    title: Text('Reports'),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Administration'),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ),
      appBar: AppBar(

         backgroundColor: Colors.blue,
          title: Text(widget.title,style: TextStyle(color: Colors.white),),
      ),
      body: Column(

        children: [
          SizedBox(
            
            width: double.infinity,
            child: Wrap(
             alignment: WrapAlignment.spaceEvenly,
              children: [
                CustomComponent(iconData: Icons.water_drop, title: 'New Test Orders\n1129', color: Colors.pink,),
                CustomComponent(iconData: Icons.auto_graph, title: 'Test Analysis\n1129', color: Colors.blue,),
                CustomComponent(iconData: Icons.work, title: 'Projects\n1129', color: Colors.greenAccent,),
                CustomComponent(iconData: Icons.account_tree, title: 'Accounts\n1129', color: Colors.deepOrange,)
              ],
            ),
          ),


          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(height: 350,width: double.infinity,color: Colors.greenAccent,
            child:MyTable() ,),
          )



        ],
      ),
        floatingActionButton: FloatingActionButton(

          onPressed: (){

          },
          child: Icon(Icons.add,color: Colors.white,),
          backgroundColor: Colors.blue,
        ),
    );
  }
}

class MyTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: double.infinity,
      color: Colors.greenAccent,
      child: DataTable(
        columns: [
          DataColumn(label: Text('Order no#')),
          DataColumn(label: Text('Title')),
          DataColumn(label: Text('Account')),
          DataColumn(label: Text('Project')),
          DataColumn(label: Text('Status')),
          DataColumn(label: Text('Received Date')),
        ],
        rows: [
          DataRow(cells: [
            DataCell(Text('13456345')),
            DataCell(Text('Title 1')),
            DataCell(Text('Account 1')),
            DataCell(Text('Project 1')),
            DataCell(Text('Status 1')),
            DataCell(Text('2024-04-15')),
          ]),
          DataRow(cells: [
            DataCell(Text('134563465')),
            DataCell(Text('Title 1')),
            DataCell(Text('Account 1')),
            DataCell(Text('Project 1')),
            DataCell(Text('Status 1')),
            DataCell(Text('2024-04-15')),
          ]),
          DataRow(cells: [
            DataCell(Text('1356345643')),
            DataCell(Text('Title 1')),
            DataCell(Text('Account 1')),
            DataCell(Text('Project 1')),
            DataCell(Text('Status 1')),
            DataCell(Text('2024-04-15')),
          ]),
          DataRow(cells: [
            DataCell(Text('134563456')),
            DataCell(Text('Title 1')),
            DataCell(Text('Account 1')),
            DataCell(Text('Project 1')),
            DataCell(Text('Status 1')),
            DataCell(Text('2024-04-15')),
          ]),
          DataRow(cells: [
            DataCell(Text('1364563')),
            DataCell(Text('Title 1')),
            DataCell(Text('Account 1')),
            DataCell(Text('Project 1')),
            DataCell(Text('Status 1')),
            DataCell(Text('2024-04-15')),
          ]),

          DataRow(cells: [
            DataCell(Text('2535645634')),
            DataCell(Text('Title 2')),
            DataCell(Text('Account 2')),
            DataCell(Text('Project 2')),
            DataCell(Text('Status 2')),
            DataCell(Text('2024-04-16')),
          ]),
          // Add more DataRow widgets for additional data
        ],
      ),
    );
  }
}