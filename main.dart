import 'package:flutter/material.dart';

void main ()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  // use for fuction
  PopupMenuItem _buildPopupMenuItem(String title) {
    return PopupMenuItem(
      child: Row(
        children: [
          Text(title),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Contanct',
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          PopupMenuButton(
            itemBuilder: (context) => [
              _buildPopupMenuItem('Sort by'),
              _buildPopupMenuItem('Delete all'),
            ],
          )
        ],
      ),

      // // add icon contact number

      floatingActionButton: FloatingActionButton(
          heroTag: 'uniqueTag',
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ContactNumber(),
                ));
          },
          child: Icon(Icons.add) ,
          ),

          
      // new function use
      body: Container(
        child: ContactPage(),
      ),
    );
  }
}


class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Center(
              child: Text("Floating Action Button", style: TextStyle(fontSize: 16),),
            ),
          ],
        ),
      ],
      
    );
  }
}

class ContactNumber extends StatelessWidget {
  const ContactNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: 
        Column(
          children: [
            Center()
          ],
        ),
      ),
    );
  }
}


