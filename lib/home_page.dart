import 'package:flutter/material.dart';

class HomeActivity extends StatefulWidget {
  const HomeActivity({super.key});

  @override
  State<HomeActivity> createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("Class 5".toUpperCase()),
        elevation: 5,

      ),
      body: Container(
        child: Column(
          children: [
            Container(height: 100, color: Colors.purple,),
            Container(height: 100, color: Colors.yellow,),
            Container(height: 100, color: Colors.red,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(height: 100, width: 100, color: Colors.green,),
                Container(height: 100, width: 100, color: Colors.orange,),
                Container(height: 100, width: 100, color: Colors.purple,),
              ],
            ),
            Row(
              children: [

                IconButton(onPressed: (){}, icon: Icon(Icons.delete)),
                SizedBox(width: 10.0,),
                ElevatedButton(onPressed: (){}, child: Text('Submit Me'),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                ),
                SizedBox(width: 10.0,),
                TextButton(onPressed: (){}, child: Text("Text Button Click Me")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
