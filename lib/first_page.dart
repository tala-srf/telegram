// ignore_for_file: sized_box_for_whitespace

//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'data.dart';

// ignore: use_key_in_widget_constructors
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
      length: 5,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.create),
          backgroundColor:  Theme.of(context).primaryColor ,
          onPressed: () {
         
          },
        ),
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,

          // shadowColor:  Theme.of(context).colorScheme.background,

          actions: <Widget>[
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  "         Telegram",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
          ],
          bottom: const TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 4,
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: 'All',
              ),
              Tab(
                text: 'جامعة',
              ),
              Tab(
                text: 'aaa',
              ),
              Tab(
                text: 'bbb',
              ),
              Tab(
                text: 'ccc',
              )
            ],
          ),
          // title:   const Text('telegram'),
        ),
        // ignore: prefer_const_literals_to_create_immutables, prefer_const_constructors
        body: TabBarView(
          children: [
            ListView.builder(
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12, width: 2),
                  ),
                  child: ListTile(
                    title: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        // ignore: prefer_const_constructors
                        CircleAvatar(
                          radius: 25,
                          // ignore: unnecessary_string_interpolations
                          backgroundImage:
                              AssetImage('${data[index]['image']}'),
                        ),
                        // ignore: unnecessary_string_interpolations
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              ' ${data[index]['title']} ',
                              style: const TextStyle(
                                  fontStyle: FontStyle.italic, fontSize: 20),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: const Text(
                                ' مرحبا بك ',
                                style: TextStyle(color: Colors.black87),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Text('${data[index]['content']}',
                            style: const TextStyle(color: Colors.black54)),
                      ],
                    ),
                  ),
                );
              },
            ),
            Container(alignment: Alignment.center, child: const Text("1")),
            Container(
              alignment: Alignment.center,
              child: const Text("2"),
            ),
            Container(
              alignment: Alignment.center,
              child: const Text("1"),
            ),
            Container(
              alignment: Alignment.center,
              child: const Text("1"),
            ),
          ],
        ),
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
           
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.pinkAccent,
                ),
                //padding: const EdgeInsets.all(8.0),
                child: Container(
                   color: Colors.pinkAccent,
                 
                  alignment: Alignment.centerLeft ,
                  height: 90,
                  child:Column(
                     mainAxisSize: MainAxisSize.min,
                    children: const [
                    CircleAvatar(
                  radius: 30,

                  // ignore: unnecessary_string_interpolations
                  backgroundImage: AssetImage('images/qq.jpg'),
                ),
                Text('تالا الصيرفي',style: TextStyle(fontSize: 20,fontStyle:FontStyle.italic ,) ),
                Text('+963345677777', style:TextStyle( color :Colors.black54,))
                

                
              


                  ]
                  ) ,
                )
              ),
              ListTile(
                    title: Row(
                      children: [
                        
                        const Icon(Icons.group),
                        const Text(" New Group")
                      ],
                    ),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
                    },
                  ),
             
                  ListTile(
                    title: Row(
                      children: [
                        
                        const Icon(Icons.person,),
                        const Text(" Contacts")
                      ],
                    ),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        
                        const Icon(Icons.call),
                        const Text(" Calls")
                      ],
                    ),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        
                        const Icon(Icons.person_outline),
                        const Text(" people")
                      ],
                    ),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        
                        const Icon(Icons.save_alt),
                        const Text("Saved ")
                      ],
                    ),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        
                        const Icon(Icons.settings),
                        const Text(" Settings")
                      ],
                    ),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
                    },
                  ),

            ],
          ),
        ),
      ),
    ));
  }
}
