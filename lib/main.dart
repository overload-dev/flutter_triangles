import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_triangles/models/triangle_effect.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Triangle',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Triangle(),
    );
  }
}

class Triangle extends StatefulWidget {
  const Triangle({super.key});

  @override
  State<Triangle> createState() => _TriangleState();
}

class _TriangleState extends State<Triangle> {

  @override
  void initState() {
    super.initState();
  }
  int selectedEffect = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Triangle'),
        backgroundColor: Theme.of(context).primaryColorLight,
        actions: [
          Row(
            children: [
              const Text(
                'Styles: ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              DropdownButton<int>(
                value: selectedEffect,
                padding: const EdgeInsets.all(10),
                items: List.generate(7, (index) {
                  return DropdownMenuItem(
                    value: index,
                    child: Text('$index'),
                  );
                }),
                onChanged: (int? value) {
                  if (value != null) {
                    setState(() {
                      selectedEffect = value;
                    });
                  }
                },
              ),
            ],
          ),
        ],
      ),
      body: RepaintBoundary(

        child: CustomPaint(
          painter: TrianglePainter(effect: selectedEffect),
          child: Container(),
        ),
      ),
    );
  }
}

class TrianglePainter extends CustomPainter {
  final int effect;
  late TriangleEffect triangleEffect;

  TrianglePainter({required this.effect}) : super() {
    if (TriangleEffect.values.length > effect) {
      triangleEffect = TriangleEffect.values[effect];
    } else {
      triangleEffect = TriangleEffect.values[0];
    }
  }

  double startX1 = -35;
  double startX2 = -70;
  double startX3 = 0;
  double startX1Even = -70;
  double startX2Even = -105;
  double startX3Even = -35;
  double yPos = 0;
  double counter = 0;

  @override
  void paint(Canvas canvas, Size size) {
    int constHeight = size.height ~/ 45;
    int constWidth = ((size.width / 75) * 2).toInt();
    int calculatedNumber = constHeight * constWidth;

    for (var i = 1; i < calculatedNumber; i++) {
      Paint paint = Paint();
      Path path = Path();
      if (i % 2 == 1 && i != 1) {
        paint.color = Color.fromRGBO(Random().nextInt(255),
            Random().nextInt(255), Random().nextInt(255), 0.14);

        path.moveTo(startX1 + triangleEffect.p.x1, triangleEffect.p.y1 + yPos);
        path.lineTo(startX2 + triangleEffect.p.x2, triangleEffect.p.y2 + yPos);
        path.lineTo(startX3 + triangleEffect.p.x3, triangleEffect.p.y3 + yPos);
        path.close();
        startX1 += 75;
        startX2 += 75;
        startX3 += 75;

        if (startX1 > size.width && counter < 14) {
          counter++;
          yPos += triangleEffect.yPos ?? 50;

          startX1 = -35;
          startX2 = -70;
          startX3 = 0;
          startX1Even = -70;
          startX2Even = -105;
          startX3Even = -35;
        }
      } else if (i != 2) {
        paint.color = Color.fromRGBO(Random().nextInt(255),
            Random().nextInt(255), Random().nextInt(255), 0.14);

        path.moveTo(
          startX1Even + triangleEffect.ep.x1,
          triangleEffect.ep.y1 + yPos,
        );
        path.lineTo(
          startX2Even + triangleEffect.ep.x2,
          triangleEffect.ep.y2 + yPos,
        );
        path.lineTo(
          startX3Even + triangleEffect.ep.x3,
          triangleEffect.ep.y3 + yPos,
        );
        path.close();

        startX1Even += 75;
        startX2Even += 75;
        startX3Even += 75;
      }
      canvas.drawPath(path, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
