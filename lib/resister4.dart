// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:mini/main.dart';
import 'package:mini/game4.dart';

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
          primarySwatch: Colors.indigo,
        ).copyWith(secondary: Color.fromARGB(255, 255, 255, 255)),
        // useMaterial3: true, // Uncomment this if you're using Flutter 2.8 or later
      ),
      home: const Resiter3(title: 'Resister3'),
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

class Resisster4 extends StatefulWidget {
  const Resisster4({Key? key, required this.title});

  final String title;

  @override
  State<Resisster4> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Resisster4> {
  List<ColorBar> colorBars = [];
  List<ColorBar> slcolorBars = [];

  ColorBar? draggedCard;
  ColorBar? emptySpace;
  String sum = '';
  String convertedSum = '0';
  String countzero = '';

  int selectedResistorType = 0;

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

  @override
  void initState() {
    super.initState();
    //  this.pointX,this.pointY,this.widthColorBar,this.heightColorBar,
    colorBars.add(ColorBar(100, 154 + 20, 22, 84.5, black, 0));
    colorBars.add(ColorBar(140, 162 + 20, 22, 69, black, 0));
    colorBars.add(ColorBar(175, 162 + 20, 22, 69, black, 0));
    colorBars.add(ColorBar(210, 162 + 20, 22, 69, black, 0));
    colorBars.add(ColorBar(255, 154 + 20, 22, 84.5, black, 0));
//  ความห่าง , ความสูง , ความกว้าง , ความยาว , สี , ค่าสี
    slcolorBars.add(ColorBar(32, 350, 35, 65, black, 0));
    slcolorBars.add(ColorBar(72, 350, 35, 65, brown, 1));
    slcolorBars.add(ColorBar(112, 350, 35, 65, red, 2));
    slcolorBars.add(ColorBar(152, 350, 35, 65, orange, 3));
    slcolorBars.add(ColorBar(192, 350, 35, 65, yellow, 4));

    slcolorBars.add(ColorBar(32, 420, 35, 65, green, 5));
    slcolorBars.add(ColorBar(72, 420, 35, 65, blue, 6));
    slcolorBars.add(ColorBar(112, 420, 35, 65, purple, 7));
    slcolorBars.add(ColorBar(152, 420, 35, 65, gray, 8));
    slcolorBars.add(ColorBar(192, 420, 35, 65, white, 9));

    slcolorBars.add(ColorBar(265, 370, 35, 75, gold, 5));
    slcolorBars.add(ColorBar(315, 370, 35, 75, silver, 10));

    emptySpace = colorBars[0];
    draggedCard = slcolorBars[0];
  }

  bool light = true; // สถานะเริ่มต้นของสวิตช์

  void _toggleLight() {
    setState(() {
      light = light;
    });
    if (light) {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
            builder: (context) => const Resiter3(title: 'Calculated resistor')),
        (route) => false, // Remove all routes except for the new one
      );
    }
  }

  void _reset() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          builder: (BuildContext context) => const Resisster4(
                title: 'Calculated resistor',
              )),
    );
  }

  void _game4() {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) => const Game4(title: 'Mini Geme'),
      ),
      (route) => true, // Remove all routes except for the new one
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: Text(widget.title),
      ),
      body: Stack(
        children: [
          Positioned(
            left: 10,
            top: 5,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Switch(
                    value: light,
                    onChanged: (value) {
                      _toggleLight();
                    },
                    activeTrackColor: const Color.fromARGB(
                        255, 33, 226, 243), // กำหนดสีเส้นติดตามเมื่อสวิตช์เปิด
                    inactiveTrackColor: Color.fromARGB(255, 236, 205, 6),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 160,
            left: 15,
            child: Container(
              child: Image.asset(
                'assets/image/4resister4.png',
                height: 110,
              ),
            ),
          ),
          Positioned(
            top: 150,
            left: 15,
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255), // สีพื้นหลังของปุ่ม
                shape: BoxShape
                    .circle, // กำหนดรูปร่างของพื้นหลัง (ในกรณีนี้ใช้วงกลม)
              ),
              child: IconButton(
                onPressed: () {
                  // โค้ดเมื่อปุ่มถูกกด
                  _reset();
                },
                icon: const Icon(
                  Icons.history, // เลือกไอคอนที่คุณต้องการ
                  color: Color.fromARGB(255, 38, 38, 40), // สีของไอคอน
                  size: 25, // ขนาดของไอคอน
                ),
              ),
            ),
          ),
          Positioned(
            top: 550,
            left: 120,
            child: Container(
              child: ElevatedButton(
                onPressed: () {
                  // โค้ดเมื่อปุ่มถูกกด
                  _game4();
                },

                // สร้างปุ่มด้วย ElevatedButton
                child: Text('ทำแบบทดสอบ'),
                // หรือเพิ่มข้อความของปุ่ม
              ),
            ),
          ),
          Positioned(
              top: 80.0,
              left: 90,
              child: Container(
                width: 202,
                height: 30,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(
                      255, 255, 255, 255), // สีพื้นหลังของ Container
                  borderRadius:
                      BorderRadius.circular(20), // กำหนดขอบโค้งของ Container
                ),
                child: Center(
                  child: Text(
                    convertedSum +
                        ' Ω  ± ' +
                        colorBars[4].number.toString() +
                        '% ',
                    style: const TextStyle(
                      fontSize: 22.0, // ขนาดฟอนต์
                      color: Colors.black, // สีข้อความ
                    ),
                  ),
                ),
              )),
          for (int index = 0; index < colorBars.length; index++)
            Positioned(
              top: 265,
              left: colorBars[index].pointX,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(
                      182, 252, 251, 251), // สีพื้นหลังของ Container
                  borderRadius:
                      BorderRadius.circular(10.0), // กำหนดขอบโค้งของ Container
                  border: Border.all(
                    color: Colors.black, // สีขอบ
                    width: 0.5, // ความหนาขอบ
                  ),
                ),
                child: Center(
                  child: Text(
                    colorBars[index].number.toString(),
                    style: const TextStyle(
                      color: Color.fromARGB(
                          255, 9, 9, 9), // เพิ่มเงื่อนไขสีข้อความ
                      fontSize: 16.0, // ขนาดข้อความ
                    ),
                  ),
                ),
              ),
            ),
          for (int index = 0; index < colorBars.length; index++)
            Positioned(
              top: colorBars[index].pointY,
              left: colorBars[index].pointX,
              child: DragTarget<ColorBar>(
                builder: (context, candidateData, rejectedData) {
                  return Container(
                    width: colorBars[index].widthColorBar,
                    height: colorBars[index].heightColorBar,
                    decoration: BoxDecoration(
                      color: colorBars[index].colorscor,

                      // กำหนดขอบโค้งของ Container
                      border: Border.all(
                        color: Colors.black, // สีขอบ
                        width: 1.2, // ความหนาขอบ
                      ),
                    ),
                  );
                },
                onWillAccept: (data) {
                  if (index == 4) {
                    if (data != null &&
                        (data.colorscor == gold || data.colorscor == silver)) {
                      return true;
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          backgroundColor: Color.fromARGB(255, 114, 12, 5),
                          content: Text(
                            'ข้อมูลสีที่เป็นค่า "ความคลาดเคลื่อนเท่านั้น!!!"',
                          ),
                        ),
                      );

                      Future.delayed(Duration(seconds: 2), () {
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      });
                    }
                  }

                  // Check if index is less than 10
                  if (index < 4) {
                    if (data != null &&
                        (data.colorscor == gold || data.colorscor == silver)) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          backgroundColor: Color.fromARGB(255, 114, 12, 5),
                          content: Text(
                            'ข้อมูลสีที่เป็นค่า "ความแทบสีเท่านั้น!!!"',
                          ),
                        ),
                      );
                      Future.delayed(const Duration(seconds: 2), () {
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      });
                      return false;
                    } else {
                      return true;
                    }
                  }
                  return false;
                },
                onAccept: (dropColer) {
                  if (draggedCard != null) {
                    setState(() {
                      final colerchang = dropColer.colorscor;
                      final numberchang = dropColer.number;
                      colorBars[index].colorscor = colerchang; //เปลี่ยนสี
                      colorBars[index].number = numberchang; //เปลี่ยนเลข
                      countzero =
                          convertToZeroPaddedString(colorBars[3].number);

                      sum = (colorBars[0].number == 0
                              ? ''
                              : colorBars[0].number.toString()) +
                          ((colorBars[1].number == 0 && colorBars[0].number > 0)
                              ? '0'
                              : (colorBars[1].number == 0
                                  ? ''
                                  : colorBars[1].number.toString())) +
                          ((colorBars[2].number == 0 && colorBars[1].number > 0)
                              ? '0'
                              : (colorBars[2].number == 0
                                  ? '0'
                                  : colorBars[2].number.toString())) +
                          ((colorBars[0].number == 0 &&
                                  colorBars[1].number == 0 &&
                                  colorBars[2].number == 0)
                              ? ''
                              : countzero);

                      convertedSum = convertToDesiredUnit(sum);
                    });
                  }
                },
              ),
            ),
          Positioned(
            top: 320,
            left: 20,
            child: Container(
              width: 220, // กำหนดความกว้างของ Container
              height: 180, // กำหนดความสูงของ Container
              decoration: BoxDecoration(
                color: Color.fromARGB(
                    255, 255, 255, 255), // สีพื้นหลังของ Container
                borderRadius:
                    BorderRadius.circular(10.0), // กำหนดขอบโค้งของ Container
                border: Border.all(
                  color: Colors.black, // สีขอบ
                  width: 1, // ความหนาขอบ
                ),
              ),
              child: const Align(
                alignment:
                    Alignment.topCenter, // จัดตำแหน่งข้อความด้านบนตรงกลาง
                child: Text(
                  'COLOR BAR',
                  style: TextStyle(
                    color: Color.fromARGB(255, 17, 17, 17),
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 320,
            left: 250,
            child: Container(
              width: 115, // กำหนดความกว้างของ Container
              height: 180, // กำหนดความสูงของ Container
              decoration: BoxDecoration(
                color: Color.fromARGB(
                    255, 252, 252, 251), // สีพื้นหลังของ Container
                borderRadius:
                    BorderRadius.circular(10.0), // กำหนดขอบโค้งของ Container
                border: Border.all(
                  color: Colors.black, // สีขอบ
                  width: 1, // ความหนาขอบ
                ),
              ),
              child: const Align(
                alignment:
                    Alignment.topCenter, // จัดตำแหน่งข้อความด้านบนตรงกลาง
                child: Text(
                  '%Error',
                  style: TextStyle(
                    color: Color.fromARGB(255, 6, 6, 6),
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
          for (int index = 0; index < slcolorBars.length; index++)
            Positioned(
              top: slcolorBars[index].pointY,
              left: slcolorBars[index].pointX,
              child: Draggable<ColorBar>(
                data: slcolorBars[index],
                feedback: Container(
                  width: slcolorBars[index].widthColorBar - 5,
                  height: slcolorBars[index].heightColorBar + 20,
                  decoration: BoxDecoration(
                    color:
                        slcolorBars[index].colorscor, // สีพื้นหลังของ Container
                    borderRadius: BorderRadius.circular(
                        10.0), // กำหนดขอบโค้งของ Container
                    border: Border.all(
                      color: Colors.black, // สีขอบ
                      width: 3, // ความหนาขอบ
                    ),
                  ),
                  // ignore: sort_child_properties_last
                  child: Center(
                    child: Text(
                      slcolorBars[index].number.toString(),
                      style: TextStyle(
                        color: slcolorBars[index].number == 0
                            ? Colors.white
                            : Colors.black, // เพิ่มเงื่อนไขสีข้อความ
                        fontSize: 16.0, // ขนาดข้อความ
                      ),
                    ),
                  ),
                ),
                child: Container(
                  width: slcolorBars[index].widthColorBar,
                  height: slcolorBars[index].heightColorBar,
                  decoration: BoxDecoration(
                    color:
                        slcolorBars[index].colorscor, // สีพื้นหลังของ Container
                    borderRadius:
                        BorderRadius.circular(2), // กำหนดขอบโค้งของ Container
                    border: Border.all(
                      color: Colors.black, // สีขอบ
                      width: 1.5, // ความหนาขอบ
                    ),
                  ),
                  child: Center(
                    child: Text(
                      slcolorBars[index].number.toString(),
                      style: TextStyle(
                        color: slcolorBars[index].number == 0
                            ? Colors.white
                            : Colors.black, // เพิ่มเงื่อนไขสีข้อความ
                        fontSize: 16.0, // ขนาดข้อความ
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

String convertToZeroPaddedString(int number) {
  return '0' * number;
}

String convertToDesiredUnit(String input) {
  double? value = double.tryParse(input);

  if (value != null) {
    if (value >= 1000 && value < 9999) {
      double convertedValue = value / 1000;
      return '${convertedValue.toStringAsFixed(2)}K ';
    } else if (value >= 10000 && value < 1000000) {
      double convertedValue = value / 1000;
      return '${convertedValue.toStringAsFixed(1)}K ';
    } else if (value >= 1000000000 && value < 10000000000) {
      double convertedValue = value / 1000000000;
      return '${convertedValue.toStringAsFixed(2)}G ';
    } else if (value >= 1000000000) {
      double convertedValue = value / 1000000000;
      return '${convertedValue.toStringAsFixed(1)}G ';
    } else if (value >= 1000000 && value < 10000000) {
      double convertedValue = value / 1000000;
      return '${convertedValue.toStringAsFixed(2)}M ';
    } else if (value >= 10000000) {
      double convertedValue = value / 1000000;
      return '${convertedValue.toStringAsFixed(1)}M ';
    }
  }
  return input;
}

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      // This bool value toggles the switch.
      value: light,
      activeColor: const Color.fromARGB(255, 14, 13, 13),
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          light = value;
        });
      },
    );
  }
}
