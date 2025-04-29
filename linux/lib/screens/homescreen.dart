import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'addtitle.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemUiOverlayStyle(systemNavigationBarColor: Colors.transparent);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('TODO APP', style: TextStyle(color: Colors.black)),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          alignment: Alignment.topLeft,
          color: Colors.white,
          height: 800,
          width: 500,
          // padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'My todos:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [Checkbox(value: true, onChanged: (value) {})],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) {
                return todo();
              },
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
