import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  // manage the sum section
  int sum = 0;
  int difference = 0;
  int product = 0;
  int quotient = 0;
  // either use a TextEditingController for each input field to get the value
  TextEditingController add1Controller = TextEditingController();
  TextEditingController add2Controller = TextEditingController();
  TextEditingController sub1Controller = TextEditingController();
  TextEditingController sub2Controller = TextEditingController();
  TextEditingController mul1Controller = TextEditingController();
  TextEditingController mul2Controller = TextEditingController();
  TextEditingController div1Controller = TextEditingController();
  TextEditingController div2Controller = TextEditingController();
  // or store each value in the state
  int addFirstNum = 0;
  int addSecondNum = 0;
  int subFirstNum = 0;
  int subSecondNum = 0;
  int mulFirstNum = 0;
  int mulSecondNum = 0;
  int divFirstNum = 0;
  int divSecondNum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Unit 5 Calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: TextField(
                  controller: add1Controller,
                  decoration: InputDecoration(labelText: "First Number"),
                  onChanged: (value) {
                    setState(() {
                      addFirstNum = int.parse(value);
                    });
                  },
                ),
              ),
              Text("  +  "),
              Expanded(
                child: TextField(
                  controller: add2Controller,
                  decoration: InputDecoration(labelText: "Second Number"),
                  onChanged: (value) {
                    setState(() {
                      addSecondNum = int.parse(value);
                    });
                  },
                ),
              ),
              Text(' = $sum   '),
              IconButton.outlined(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      sum = addFirstNum + addSecondNum;
                    });
                  }),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 10),
                ),
                onPressed: () {
                  setState(() {
                    add1Controller.clear();
                    add2Controller.clear();
                    sum = 0;
                  });
                },
                child: Text("Clear"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: TextField(
                  controller: sub1Controller,
                  decoration: InputDecoration(labelText: "First Number"),
                  onChanged: (value) {
                    setState(() {
                      subFirstNum = int.parse(value);
                    });
                  },
                ),
              ),
              Text("  -  "),
              Expanded(
                child: TextField(
                  controller: sub2Controller,
                  decoration: InputDecoration(labelText: "Second Number"),
                  onChanged: (value) {
                    setState(() {
                      subSecondNum = int.parse(value);
                    });
                  },
                ),
              ),
              Text(' = $difference   '),
              IconButton.outlined(
                  icon: Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      difference = subFirstNum - subSecondNum;
                    });
                  }),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 10),
                ),
                onPressed: () {
                  setState(() {
                    sub1Controller.clear();
                    sub2Controller.clear();
                    difference = 0;
                  });
                },
                child: Text("Clear"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: TextField(
                  controller: mul1Controller,
                  decoration: InputDecoration(labelText: "First Number"),
                  onChanged: (value) {
                    setState(() {
                      mulFirstNum = int.parse(value);
                    });
                  },
                ),
              ),
              Text("  *  "),
              Expanded(
                child: TextField(
                  controller: mul2Controller,
                  decoration: InputDecoration(labelText: "Second Number"),
                  onChanged: (value) {
                    setState(() {
                      mulSecondNum = int.parse(value);
                    });
                  },
                ),
              ),

              Text(' = $product   '),
              IconButton.outlined(
                  icon: Icon(Icons.clear),
                  onPressed: () {
                    setState(() {
                      product = mulFirstNum * mulSecondNum;
                    });
                  }),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 10),
                ),
                onPressed: () {
                  setState(() {
                    mul1Controller.clear();
                    mul2Controller.clear();
                    product = 0;
                  });
                },
                child: Text("Clear"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: TextField(
                  controller: div1Controller,
                  decoration: InputDecoration(labelText: "First Number"),
                  onChanged: (value) {
                    setState(() {
                      divFirstNum = int.parse(value);
                    });
                  },
                ),
              ),

              Text(" ÷ "),
              Expanded(
                child: TextField(
                  controller: div2Controller,
                  decoration: InputDecoration(labelText: "Second Number"),
                  onChanged: (value) {
                    setState(() {
                      divSecondNum = int.parse(value);
                    });
                  },
                ),
              ),
              Text(' = $quotient   '),
               IconButton.outlined(
                   icon: const Text('÷', style: TextStyle(fontSize:18)),
                  onPressed: () {
                    setState(() {
                      quotient = divFirstNum ~/ divSecondNum;
                    });
                  }),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 10),
                ),
                onPressed: () {
                  setState(() {
                    div1Controller.clear();
                    div2Controller.clear();
                    quotient = 0;
                  });
                },
                child: Text("Clear"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}