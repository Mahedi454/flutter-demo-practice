import 'package:flutter/material.dart';
class M_11_Class_1 extends StatelessWidget {
  const M_11_Class_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My first flutter app', style: TextStyle(
          color: Colors.white,
        ),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          Card(
            color: Colors.blue.shade50,
            elevation: 5,
            child: ListTile(
              title: Text('Mahedi Hasan', style: TextStyle(
                color: Colors.black,
              ),),
              subtitle: Text('01768857058', style: TextStyle(
                color: Colors.blueGrey,
              ),),
              leading: Icon(Icons.phone, color: Colors.green),
              trailing: Icon(Icons.delete, color: Colors.red),
            ),
          ),
          Card(
            color: Colors.blue.shade50,
            elevation: 5,
            child: ListTile(
              title: Text('Mahedi Hasan', style: TextStyle(
                color: Colors.black,
              ),),
              subtitle: Text('01768857058', style: TextStyle(
                color: Colors.blueGrey,
              ),),
              leading: Icon(Icons.phone, color: Colors.green),
              trailing: Icon(Icons.delete, color: Colors.red),
            ),
          ),
          Card(
            color: Colors.blue.shade50,
            elevation: 5,
            child: ListTile(
              title: Text('Mahedi Hasan', style: TextStyle(
                color: Colors.black,
              ),),
              subtitle: Text('01768857058', style: TextStyle(
                color: Colors.blueGrey,
              ),),
              leading: Icon(Icons.phone, color: Colors.green),
              trailing: Icon(Icons.delete, color: Colors.red),
            ),
          ),
          Card(
            color: Colors.blue.shade50,
            elevation: 5,
            child: ListTile(
              title: Text('Mahedi Hasan', style: TextStyle(
                color: Colors.black,
              ),),
              subtitle: Text('01768857058', style: TextStyle(
                color: Colors.blueGrey,
              ),),
              leading: Icon(Icons.phone, color: Colors.green),
              trailing: Icon(Icons.delete, color: Colors.red),
            ),
          ),
          Card(
            color: Colors.blue.shade50,
            elevation: 5,
            child: ListTile(
              title: Text('Mahedi Hasan', style: TextStyle(
                color: Colors.black,
              ),),
              subtitle: Text('01768857058', style: TextStyle(
                color: Colors.blueGrey,
              ),),
              leading: Icon(Icons.phone, color: Colors.green),
              trailing: Icon(Icons.delete, color: Colors.red),
            ),
          ),

        ],
      ),
    );
  }
}
