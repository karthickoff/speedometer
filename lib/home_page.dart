import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:speedometer/bloc/rotate_bloc.dart';
import 'package:speedometer/speedometercheck.dart';
import 'package:speedometer/sppedometer.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final TextEditingController mycontroller = TextEditingController();
  final RotateBloc rotateBloc = RotateBloc();
  final ValueNotifier<int> _counter = ValueNotifier<int>(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('speedometer'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          BlocBuilder<RotateBloc, RotateState>(
            bloc: rotateBloc,
            builder: (context, state) {
              return TextField(
                controller: mycontroller,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                  // TextInputFormatter.withFunction(
                  //   (oldValue, newValue) {
                  //     try {
                  //       final intValue = int.parse(newValue.text);
                  //       print(intValue <= 35 ? newValue : oldValue);
                  //       return intValue <= 35 ? newValue : oldValue;
                  //     } catch (e) {
                  //       print(oldValue);
                  //       return oldValue;
                  //     }
                  //   },
                  // ),
                ],
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Number',
                ),
              );
            },
          ),
          ElevatedButton(
              onPressed: () {
                print(mycontroller.text);
                if (int.parse(mycontroller.text) <= 35) {
                  _counter.value = int.parse(mycontroller.text);
                } else {
                  mycontroller.clear();
                }
                // rotateBloc.add(UpdateRotateEvent(int.parse(mycontroller.text)));
              },
              child: const Text("ok")),
          const SizedBox(
            height: 50,
          ),
          Expanded(
              child: ValueListenableBuilder(
                  valueListenable: _counter,
                  builder: (context, value, child) {
                    return StackArea(
                      meterValue: value,
                    );
                  })),
        ],
      ),
    );
  }
}
