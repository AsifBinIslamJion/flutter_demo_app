import 'package:flutter/material.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  var number = 0;
  bool isFavorit = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo App', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.tealAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(60.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Numbers = $number',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      number++;
                    });
                  },
                  child: Icon(Icons.add),
                ),
                SizedBox(width: 10),

                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      number--;

                      number > 0 ? number-- : number = 0;
                    });
                  },
                  child: Icon(Icons.remove),
                ),
                SizedBox(width: 15),
                IconButton(
                  onPressed: () {
                    setState(() {});
                    isFavorit = !isFavorit;
                  },
                  icon: Icon(
                    isFavorit ? Icons.favorite : Icons.favorite_border,
                    color: isFavorit ? Colors.red : Colors.blueGrey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
