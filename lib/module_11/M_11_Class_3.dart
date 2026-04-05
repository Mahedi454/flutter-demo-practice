import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
  const Alert({super.key});

  @override
  Widget build(BuildContext context) {
    void showAlertDialog(){
      showDialog(context: context, builder: (context) => AlertDialog(
        icon: Icon(Icons.warning, color: Colors.red,),
        title: Text('This is an Alert Dialog'),
        content: Text('Are you sure...?'),
        actions: [
          TextButton(onPressed: () {}, child: Text('Yes')),
          TextButton(onPressed: () {}, child: Text('No')),
        ],
      ));
    }

    void showSimpleDialog(){
    showDialog(context: context, builder: (context) => SimpleDialog(
    title: Text('This is an Alert Dialog'),
    children: [
      SimpleDialogOption(

      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('Enter Your Age...'),
            TextField(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text('Yes')),
                  ElevatedButton(onPressed: () {}, child: Text('No'))
                ],
              ),
            )
          ],
        ),
      )
    ],
    ));
    }

    void showSnackbar(){
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Items Deleted...'),
          action: SnackBarAction(label: 'Undo', onPressed: (){}),)
      );
    }

    void showBottomSheet(){
      showModalBottomSheet(context: context, builder: (context) => Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
            children: [
              Text('Choose option'),
              ListTile(
                title: Text('Option 1'),

              ),
              ListTile(
                title: Text('Option 1'),

              ),
              ListTile(
                title: Text('Option 1'),

              ),

            ],
        ),
      ));

    }


    return Scaffold(
      appBar: AppBar(
        title: Text('Alert'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              showAlertDialog();
            }, child: Text('Alert Dialog')),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () {
              showSimpleDialog();
            }, child: Text('Simple Dialog')),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () {
              showSnackbar();
            }, child: Text('Snackbar')),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () {
              showBottomSheet();
            }, child: Text('Bottom Sheet'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
    );
  }
}
