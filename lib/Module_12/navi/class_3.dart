import 'package:flutter/material.dart';

class Module12Class3 extends StatefulWidget {
  const Module12Class3({super.key});

  @override
  State<Module12Class3> createState() => _Module12Class3State();
}

class _Module12Class3State extends State<Module12Class3> {
  bool selected = false;
  bool showMessage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animation in flutter")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 2),
                height: selected ? 100 : 150,
                width: selected ? 200 : 100,
                decoration: BoxDecoration(
                  color: selected ? Colors.green : Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: selected ? 100 : 150,
              width: selected ? 200 : 100,
              decoration: BoxDecoration(
                color: selected ? Colors.green : Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Divider(),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  showMessage = !showMessage;
                });
              },
              child: Text("Add to Cart"),
            ),
            AnimatedOpacity(
              opacity: showMessage ? 1 : 0,
              duration: Duration(seconds: 1),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Added to Cart",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            AnimatedAlign(
              alignment: showMessage ? Alignment.topRight : Alignment.topLeft,
              duration: Duration(seconds: 2),
              child: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                  'https://png.pngtree.com/png-clipart/20230927/original/pngtree-man-avatar-image-for-profile-png-image_13001882.png',
                ),
              ),
            ),
            SizedBox(
              height: 120,
              child: Stack(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        showMessage = !showMessage;
                      });
                    },
                    child: Text("This is Animation"),
                  ),
                  AnimatedPositioned(
                    bottom: showMessage ? 0 : -120,
                    left: 0,
                    right: 0,
                    duration: Duration(seconds: 2),
                    child: Container(
                      height: 80,
                        alignment: Alignment.center,
                        color: Colors.red,
                        child: Text("Test Animation", style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
