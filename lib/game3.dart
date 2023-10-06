import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.brown,
        ).copyWith(secondary: Color.fromARGB(243, 237, 237, 236)),
        // useMaterial3: true, // Uncomment this if you're using Flutter 2.8 or later
      ),
      home: const Game3(title: 'Mini Game'),
    );
  }
}

class ColorBar {
  double pointX;
  double pointY;
  double widthColorBar;
  double heightColorBar;
  Color colorscor;
  int number;
  ColorBar(this.pointX, this.pointY, this.widthColorBar, this.heightColorBar,
      this.colorscor, this.number);
}

class ColorBar2 {
  late Color colorscor2;
  late int number2;
  ColorBar2(this.colorscor2, this.number2);
}

class Game3 extends StatefulWidget {
  const Game3({Key? key, required this.title});

  final String title;

  @override
  State<Game3> createState() => _MyHomePageState1();
}

class _MyHomePageState1 extends State<Game3> {
  List<ColorBar> colorBars = [];
  List<ColorBar> colorBarsfake = [];
  List<ColorBar> slcolorBars = [];
  List<ColorBar2> colorBars2 = [];

  String sum = '';
  String sumfake = '';

  String convertedSum = '0';
  String convertedSumfake = '0';

  String countzero = '';
  String countzerofake = '';

  Random random = Random();

  Color empcoler = const Color.fromARGB(255, 208, 205, 205);
  Color black = const Color.fromARGB(253, 0, 0, 0);
  Color brown = const Color.fromARGB(250, 144, 69, 3);
  Color red = const Color.fromRGBO(255, 0, 0, 1.0);
  Color orange = const Color.fromARGB(255, 255, 162, 0);
  Color yellow = const Color.fromARGB(255, 236, 220, 8);
  Color green = const Color.fromARGB(255, 7, 239, 3);
  Color blue = const Color.fromARGB(255, 40, 84, 243);
  Color purple = const Color.fromARGB(255, 181, 5, 251);
  Color gray = const Color.fromARGB(255, 91, 91, 91);
  Color white = const Color.fromARGB(255, 255, 255, 255);
  Color gold = const Color.fromARGB(255, 203, 144, 5);
  Color silver = const Color.fromARGB(255, 192, 192, 192);
  Color not = const Color.fromARGB(255, 60, 15, 15);

  @override
  void initState() {
    super.initState();

    MyRandomClass myRandomObject = MyRandomClass();
    int random1 = myRandomObject.RandomNumber9();
    int random2 = myRandomObject.RandomNumber9();
    int random3 = myRandomObject.RandomNumber9();
    int random4 = myRandomObject.RandomNumber9();

    int random5 = myRandomObject.RandomNumber2();
    int random6 = myRandomObject.RandomNumber2();
    int random7 = myRandomObject.RandomNumber2();
    int random8 = myRandomObject.RandomNumber4_6();

    colorBars2.add(ColorBar2(black, 0));
    colorBars2.add(ColorBar2(brown, 1));
    colorBars2.add(ColorBar2(red, 2));
    colorBars2.add(ColorBar2(orange, 3));
    colorBars2.add(ColorBar2(yellow, 4));
    colorBars2.add(ColorBar2(green, 5));
    colorBars2.add(ColorBar2(blue, 6));
    colorBars2.add(ColorBar2(purple, 7));
    colorBars2.add(ColorBar2(gray, 8));
    colorBars2.add(ColorBar2(white, 9));

    colorBars2.add(ColorBar2(not, random8));
    colorBars2.add(ColorBar2(not, random8));
    colorBars2.add(ColorBar2(not, random8));

    colorBars.add(ColorBar(115, 155 + 20, 22, 81.8,
        colorBars2[random1].colorscor2, colorBars2[random1].number2));
    colorBars.add(ColorBar(158, 164 + 20, 22, 63.5,
        colorBars2[random2].colorscor2, colorBars2[random2].number2));
    colorBars.add(ColorBar(195, 164 + 20, 22, 63.5,
        colorBars2[random3].colorscor2, colorBars2[random3].number2));
    colorBars.add(
        ColorBar(235, 155 + 20, 22, 81.8, black, colorBars2[random4].number2));

    colorBarsfake.add(ColorBar(
        115,
        155 + 20,
        22,
        81.8,
        colorBars2[random1].colorscor2,
        colorBars2[random1 + random5 + 1].number2));
    colorBarsfake.add(ColorBar(
        158,
        164 + 20,
        22,
        63.5,
        colorBars2[random2].colorscor2,
        colorBars2[random2 - random6 + 1].number2));
    colorBarsfake.add(ColorBar(
        195,
        164 + 20,
        22,
        63.5,
        colorBars2[random3].colorscor2,
        colorBars2[random3 + random7 + 1].number2));

    countzero = convertToZeroPaddedString(colorBars[2].number);
    countzerofake = convertToZeroPaddedString(colorBarsfake[2].number);

    if (colorBars[0].number == 0) {
      sum = '';
    } else {
      sum = colorBars[0].number.toString();
    }

    if (colorBars[1].number == 0 && colorBars[0].number > 0) {
      sum += '0';
    } else if (colorBars[1].number == 0) {
      sum += '0';
    } else {
      sum += colorBars[1].number.toString();
    }

    if (colorBars[0].number == 0 && colorBars[1].number == 0) {
      sum += '';
    } else {
      sum += countzero;
    }
//fake
    if (colorBarsfake[0].number == 0) {
      sumfake = '';
    } else {
      sumfake = colorBarsfake[0].number.toString();
    }

    if (colorBarsfake[1].number == 0 && colorBarsfake[0].number > 0) {
      sumfake += '0';
    } else if (colorBarsfake[1].number == 0) {
      sumfake += '0';
    } else {
      sumfake += colorBarsfake[1].number.toString();
    }

    if (colorBarsfake[0].number == 0 && colorBarsfake[1].number == 0) {
      sumfake += '';
    } else {
      sumfake += countzerofake;
    }

    convertedSum = convertToUnit(sum);
    convertedSumfake = convertToUnit(sumfake);
  }

  @override
  Widget build(BuildContext context) {
    double top1, top2;
    if (random.nextBool()) {
      top1 = 350;
      top2 = 430;
    } else {
      top1 = 430;
      top2 = 350;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: Text(widget.title),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 40,
            child: Container(
              width: 300,
              height: 50,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 50, 38, 54),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
              ),
              alignment: Alignment.center,
              child: const Text(
                'เลือกคำตอบที่ถูกต้อง',
                style: TextStyle(
                  color: Color.fromARGB(255, 254, 254, 254),
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
          Positioned(
            top: 150,
            left: 15,
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {
                  _reset();
                },
                icon: const Icon(
                  Icons.history,
                  color: Color.fromARGB(255, 38, 38, 40),
                  size: 25,
                ),
              ),
            ),
          ),
          Positioned(
            top: 160,
            left: 15,
            child: Container(
              child: Image.asset(
                'assets/image/3resister3.png',
                height: 110,
              ),
            ),
          ),
          for (int index = 0; index < colorBars.length; index++)
            Positioned(
              top: colorBars[index].pointY, // Use the Y position from colorBars
              left:
                  colorBars[index].pointX, // Use the X position from colorBars
              child: Container(
                width: colorBars[index].widthColorBar,
                height: colorBars[index].heightColorBar,
                decoration: BoxDecoration(
                  color: colorBars[index].colorscor,
                  border: Border.all(
                    color: Colors.black,
                    width: 0.5,
                  ),
                ),
              ),
            ),
          Positioned(
            top: top2,
            left: 58,
            child: SizedBox(
              width: 250,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  _true();
                },
                child: Text(
                  '$convertedSum  Ω',
                ),
              ),
            ),
          ),
          Positioned(
            top: top1,
            left: 58,
            child: SizedBox(
              width: 250,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  _false();
                },
                child: Text(
                  '$convertedSumfake  Ω',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _true() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color.fromARGB(255, 244, 244, 244),
          title: Text(
            'ขอแสดงความยินดีด้วย $convertedSum Ω \nเป็นคำตอบที่ถูก !!!!',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16.0, // ขนาดตัวอักษร
              color: Color.fromARGB(255, 10, 110, 7), // สีตัวอักษร
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const Game3(
                      title: 'Mini Game',
                    ),
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }

  void _false() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color.fromARGB(255, 244, 244, 244),
          title: Text(
            '$convertedSumfake Ω เป็นคำตอบที่ผิด!!!! \nคำตอบที่ถูกคือ $convertedSum Ω',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16.0, // ขนาดตัวอักษร
              color: Color.fromARGB(255, 237, 0, 0), // สีตัวอักษร
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const Game3(
                      title: 'Mini Game',
                    ),
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }

  void _reset() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          builder: (BuildContext context) => const Game3(
                title: 'Mini Game',
              )),
    );
  }
}

class MyRandomClass {
  Random random = Random();

  int RandomNumber9() {
    int randomNumber = random.nextInt(10);
    return randomNumber;
  }

  int RandomNumber2() {
    int randomNumber = random.nextInt(1) + 0;
    return randomNumber;
  }

  int RandomNumber4_6() {
    int randomNumber = random.nextInt(6) + 4;
    return randomNumber;
  }
}

String convertToZeroPaddedString(int number) {
  return '0' * number;
}

String convertToUnit(String input) {
  double? value = double.tryParse(input);

  if (value != null) {
    if (value >= 1000 && value < 9999) {
      double convertedValue = value / 1000;
      return '${convertedValue.toStringAsFixed(1)}K ';
    } else if (value >= 10000 && value < 1000000) {
      double convertedValue = value / 1000;
      return '${convertedValue.toStringAsFixed(0)}K ';
    } else if (value >= 1000000000 && value < 10000000000) {
      double convertedValue = value / 1000000000;
      return '${convertedValue.toStringAsFixed(1)}G ';
    } else if (value >= 1000000000) {
      double convertedValue = value / 1000000000;
      return '${convertedValue.toStringAsFixed(0)}G ';
    } else if (value >= 1000000 && value < 10000000) {
      double convertedValue = value / 1000000;
      return '${convertedValue.toStringAsFixed(1)}M ';
    } else if (value >= 10000000) {
      double convertedValue = value / 1000000;
      return '${convertedValue.toStringAsFixed(0)}M ';
    }
  }
  return input;
}
