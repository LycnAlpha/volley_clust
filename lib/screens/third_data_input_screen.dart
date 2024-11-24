import 'package:flutter/material.dart';
import 'package:volley_cust/providers/model_data_provider.dart';
import 'package:volley_cust/widgets/input_box.dart';

class ThirdDataInputScreen extends StatelessWidget {
  final ModelDataProvider modelDataProvider;
  const ThirdDataInputScreen({
    super.key,
    required this.modelDataProvider,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Enter your player details',
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    InputBox(
                      label: 'Speed',
                      onchanged: (value) {
                        modelDataProvider.setSpeed(value);
                      },
                    ),
                    InputBox(
                      label: 'Hand grip/Body weight',
                      onchanged: (value) {
                        modelDataProvider.setHandGripByBodyWeight(value);
                      },
                    ),
                    InputBox(
                      label: 'Sit-ups/min',
                      onchanged: (value) {
                        modelDataProvider.setSituUpsPerMin(value);
                      },
                    ),
                    InputBox(
                      label: 'Push-ups/min',
                      onchanged: (value) {
                        modelDataProvider.setPushUpsPerMin(value);
                      },
                    ),
                    InputBox(
                      label: 'Sit & reach(cm)',
                      onchanged: (value) {
                        modelDataProvider.setSitNreach(value);
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30.0,
                  vertical: 15.0,
                ),
                child: GestureDetector(
                  onTap: () {
                    modelDataProvider.validation3(
                      modelDataProvider,
                      context,
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.blue),
                    child: const Text(
                      'Next',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
