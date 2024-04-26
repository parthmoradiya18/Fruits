import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruits/India_Fruits.dart';

void main() {
  runApp(CupertinoApp(
    title: "India Fruits",
    color: Colors.orangeAccent.shade400,
    debugShowCheckedModeBanner: false,
    home: Fruits(),
  ));
}

class Fruits extends StatefulWidget {
  const Fruits({Key? key}) : super(key: key);

  @override
  State<Fruits> createState() => _FruitsState();
}

class _FruitsState extends State<Fruits> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: GridView.builder(
          itemCount: Fruits_data.Fruit_name.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 200,
          ),
          itemBuilder: (context, index) {
            return Card(
              child: Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: Column(
                  children: [
                    Spacer(),
                    Text(
                      "${Fruits_data.Fruit_name[index]}",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      "${Fruits_data.Fruit_logo[index]}",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      "Rs.${Fruits_data.Fruit_Rs[index]}",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 2, color: Colors.black),
                ),
              ),
            );
          }),
    );
  }
}
