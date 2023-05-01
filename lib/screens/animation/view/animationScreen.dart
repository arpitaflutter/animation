import 'package:flutter/material.dart';

class animationScreen extends StatefulWidget {
  const animationScreen({Key? key}) : super(key: key);

  @override
  State<animationScreen> createState() => _animationScreenState();
}

class _animationScreenState extends State<animationScreen> {
  bool isAnim = false;
  bool isOpacity = false;
  bool isAlign = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Animation")),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedContainer(
                  duration: Duration(seconds: 2),
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: isAnim == false
                        ? BorderRadius.circular(0)
                        : BorderRadius.circular(100),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isAnim = !isAnim;
                    });
                  },
                  child: Text("Animation"),
                ),
                SizedBox(
                  height: 10,
                ),
                AnimatedOpacity(
                  opacity: isOpacity == false ? 0 : 1,
                  duration: Duration(seconds: 1),
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isOpacity = !isOpacity;
                    });
                  },
                  child: Text("Opacity"),
                ),
                SizedBox(
                  height: 20,
                ),
                AnimatedAlign(
                  alignment: isAlign==false?Alignment.centerLeft:Alignment.centerRight,
                  duration: Duration(seconds: 1),
                  child: Container(
                    height: 100,width: 100,
                    color: Colors.green,
                  ),
                ),
                ElevatedButton(onPressed: () {
                  setState(() {
                    isAlign = !isAlign;
                  });
                }, child: Text("Align"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
