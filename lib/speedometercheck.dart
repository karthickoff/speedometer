import 'package:flutter/material.dart';
import 'package:speedometer/custompainter.dart';

class StackArea extends StatelessWidget {
  StackArea({super.key, required this.meterValue});
  int meterValue;

  int currAngle = 0;

  @override
  Widget build(BuildContext context) {
    print(this.meterValue);
    print("inside stack area");
    print(this.meterValue * 8);
    // if()

    return Stack(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      children: [
        Positioned(
          top: 20,
          left: 100,
          child: Transform.rotate(
            angle: -0.2,
            child: CustomPaint(
              painter: CurvePainter(callback: Colors.red),
              child: const SizedBox(
                width: 60,
                height: 20,
              ),
            ),
          ),
        ),
        Positioned(
          top: 60,
          left: 40,
          child: Transform.rotate(
            angle: -0.8,
            child: CustomPaint(
              painter: CurvePainter(callback: Colors.red),
              child: const SizedBox(
                width: 60,
                height: 20,
              ),
            ),
          ),
        ),
        Positioned(
          top: 120,
          left: 5,
          child: Transform.rotate(
            angle: -1.2,
            child: CustomPaint(
              painter: CurvePainter(callback: Colors.red),
              child: const SizedBox(
                width: 60,
                height: 20,
              ),
            ),
          ),
        ),
        const Positioned(
            top: 5,
            left: 180,
            child: Text(
              "Pivot",
              style: TextStyle(color: Colors.red),
            )),
        const Positioned(
            top: 130,
            left: 2,
            child: Text(
              "S3",
              style: TextStyle(color: Colors.red),
            )),
        const Positioned(
            top: 50,
            left: 35,
            child: Text(
              "S2",
              style: TextStyle(color: Colors.red),
            )),
        const Positioned(
            top: 1,
            left: 120,
            child: Text(
              "S1",
              style: TextStyle(color: Colors.red),
            )),
        const Positioned(top: 5, left: 180, child: Text("Pivot")),
        const Positioned(
            right: 120,
            top: 2,
            child: Text(
              "R1",
              style: TextStyle(color: Colors.green),
            )),
        const Positioned(
            top: 50,
            right: 35,
            child: Text(
              "R2",
              style: TextStyle(color: Colors.green),
            )),
        const Positioned(
            right: 2,
            top: 120,
            child: Text(
              "R3",
              style: TextStyle(color: Colors.green),
            )),
        Positioned(
          top: 120,
          right: 10,
          child: Transform.rotate(
            angle: 1.2,
            child: CustomPaint(
              painter: CurvePainter(callback: Colors.green),
              child: const SizedBox(
                width: 60,
                height: 20,
              ),
            ),
          ),
        ),
        Positioned(
          top: 60,
          right: 50,
          child: Transform.rotate(
            angle: 0.8,
            child: CustomPaint(
              painter: CurvePainter(callback: Colors.green),
              child: const SizedBox(
                width: 60,
                height: 20,
              ),
            ),
          ),
        ),
        Positioned(
          top: 20,
          right: 110,
          child: Transform.rotate(
            angle: 0.3,
            child: CustomPaint(
              painter: CurvePainter(callback: Colors.green),
              child: const SizedBox(
                width: 60,
                height: 20,
              ),
            ),
          ),
        ),
        Positioned(
          top: 140,
          right: 180,
          child: Transform.rotate(
            angle: (meterValue <= 15 ? meterValue * 6 : meterValue * 5) *
                (3.14159265358979323846 / 180),
            child: Transform.rotate(
              angle: 40 * (3.14159265358979323846 / 180),
              child: Image.asset(
                'images/needle.png',
                height: 60,
                width: 60,
              ),
            ),
          ),
        )
      ],
    );
  }
}
