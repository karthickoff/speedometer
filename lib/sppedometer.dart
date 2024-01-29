// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:speedometer/bloc/rotate_bloc.dart';
// import 'package:speedometer/custompainter.dart';
// import 'dart:math' as math;

// class StackArea extends StatelessWidget {
//   StackArea({super.key});

//   int currAngle = 0;

//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<RotateBloc, RotateState>(
//       listenWhen: (previous, current) => previous != current,
//       listener: (context, state) => print('sdf'),
//       buildWhen: (previous, current) {
//         print('objectdijnfjgi');
//         return true;
//       },
//       builder: (context, state) {
//         print(state);
//         if (state is InitalRotateState) {
//           print(state.angleToRotate);
//         }
//         print("inside widget ");
//         return Stack(
//           clipBehavior: Clip.antiAliasWithSaveLayer,
//           children: [
//             Positioned(
//               top: 30,
//               left: 120,
//               child: Transform.rotate(
//                 angle: -0.2,
//                 child: CustomPaint(
//                   painter: CurvePainter(callback: Colors.red),
//                   child: Container(
//                     width: 60,
//                     height: 20,
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               top: 60,
//               left: 60,
//               child: Transform.rotate(
//                 angle: -0.6,
//                 child: CustomPaint(
//                   painter: CurvePainter(callback: Colors.red),
//                   child: Container(
//                     width: 60,
//                     height: 20,
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               top: 120,
//               left: 15,
//               child: Transform.rotate(
//                 angle: -1.2,
//                 child: CustomPaint(
//                   painter: CurvePainter(callback: Colors.red),
//                   child: Container(
//                     width: 60,
//                     height: 20,
//                   ),
//                 ),
//               ),
//             ),
//             const Positioned(top: 8, left: 180, child: Text("Pilot")),
//             Positioned(
//               top: 120,
//               right: 15,
//               child: Transform.rotate(
//                 angle: 1.2,
//                 child: CustomPaint(
//                   painter: CurvePainter(callback: Colors.green),
//                   child: Container(
//                     width: 60,
//                     height: 20,
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               top: 60,
//               right: 60,
//               child: Transform.rotate(
//                 angle: 0.6,
//                 child: CustomPaint(
//                   painter: CurvePainter(callback: Colors.green),
//                   child: Container(
//                     width: 60,
//                     height: 20,
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               top: 30,
//               right: 120,
//               child: Transform.rotate(
//                 angle: 0.3,
//                 child: CustomPaint(
//                   painter: CurvePainter(callback: Colors.green),
//                   child: Container(
//                     width: 60,
//                     height: 20,
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               top: 120,
//               right: 160,
//               child: Transform.rotate(
//                 angle: 185 * (3.14159265358979323846 / 180),
//                 child: Image.asset(
//                   'images/needle.png',
//                   height: 70,
//                   width: 70,
//                 ),
//               ),
//             )
//           ],
//         );
//       },
//     );
//   }
// }
