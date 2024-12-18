import 'package:flutter/material.dart';
//import 'package:project_calculator/button.dart';


final number = TextEditingController();

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: calculator(),
    ),
  );
}

class calculator extends StatefulWidget {
  const calculator({
    super.key,
  });

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Calculator'),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){},
                  style: buttonColor(),
                  child: Text('7'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  style: buttonColor(),
                  child: Text('8'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: buttonColor(),
                  child: Text('9'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: buttonColor(),
                  child: Text('/'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                    });
                  },
                  style: buttonColor(),
                  child: Text('6'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: buttonColor(),
                  child: Text('5'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: buttonColor(),
                  child: Text('4'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: buttonColor(),
                  child: Text('*'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: buttonColor(),
                  child: Text('1'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: buttonColor(),
                  child: Text('2'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: buttonColor(),
                  child: Text('3'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: buttonColor(),
                  child: Text('-'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: buttonColor(),
                  child: Text('0'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: buttonColor(),
                  child: Text('clr'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: buttonColor(),
                  child: Text('='),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: buttonColor(),
                  child: Text('+'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  ButtonStyle buttonColor() {
    return ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states){
                        if (states.contains(MaterialState.pressed)){
                          return Colors.red;
                        }
                        return Colors.white24;
                      }
                  )
                );
  }
}
