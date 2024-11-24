import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:volley_cust/api_services.dart';
import 'package:volley_cust/screens/final_results_screen.dart';
import 'package:volley_cust/screens/fourth_data_input_screen.dart';
import 'package:volley_cust/screens/second_data_input_screen.dart';
import 'package:volley_cust/screens/third_data_input_screen.dart';
import 'package:volley_cust/toasts.dart';

class ModelDataProvider extends ChangeNotifier {
  String age = '';
  String weight = '';
  String height = '';
  String bmi = '';
  String randomHeartRate = '';

  String bloodPressureDiastolic = '';
  String bloodPressureSystolic = '';
  String fat = '';
  String medicineBallThrow = '';
  String verticleJump = '';

  String speed = '';
  String handGripByBodyWeight = '';
  String sitUpsPerMin = '';
  String pushUpsPerMin = '';
  String sitNReach = '';

  String vo2Max = '';
  String skillsNTechniques = '';
  String gameCondition = '';
  String genderEncoded = '';
  String agilityTest = '';

  dynamic prediction;

  Future<void> getPrediction(BuildContext context) async {
    await APIServices.getPrediction(
            age,
            weight,
            height,
            bmi,
            randomHeartRate,
            bloodPressureDiastolic,
            bloodPressureSystolic,
            fat,
            medicineBallThrow,
            verticleJump,
            speed,
            handGripByBodyWeight,
            sitUpsPerMin,
            pushUpsPerMin,
            sitNReach,
            vo2Max,
            skillsNTechniques,
            gameCondition,
            genderEncoded,
            agilityTest)
        .then((result) {
      try {
        if (result.statusCode == 200) {
          final data = json.decode(result.body);
          prediction = data['prediction'];

          //  int cluster = int.parse(prediction);

          Toasts.showSuccessToast('Success!!!');

          notifyListeners();
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => FinalResultsScreen(
                      result: prediction,
                    )),
          );
        } else {
          Toasts.showErrorToast('Error Occured');
        }
      } catch (e) {
        Toasts.showErrorToast(e.toString());
      }
    }, onError: (error) {
      Toasts.showErrorToast(error);
    });
  }

  void validation1(
    ModelDataProvider provider,
    BuildContext context,
  ) {
    if (age.isEmpty ||
        weight.isEmpty ||
        height.isEmpty ||
        bmi.isEmpty ||
        randomHeartRate.isEmpty) {
      Toasts.showErrorToast('Please fill out all the fields');
    } else {
      //continue
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => SecondDataInputScreen(
                  modelDataProvider: provider,
                )),
      );
    }
  }

  void validation2(
    ModelDataProvider provider,
    BuildContext context,
  ) {
    if (bloodPressureDiastolic.isEmpty ||
        bloodPressureSystolic.isEmpty ||
        fat.isEmpty ||
        medicineBallThrow.isEmpty ||
        verticleJump.isEmpty) {
      Toasts.showErrorToast('Please fill out all the fields');
    } else {
      //continue
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ThirdDataInputScreen(
                  modelDataProvider: provider,
                )),
      );
    }
  }

  void validation3(
    ModelDataProvider provider,
    BuildContext context,
  ) {
    if (speed.isEmpty ||
        handGripByBodyWeight.isEmpty ||
        sitUpsPerMin.isEmpty ||
        pushUpsPerMin.isEmpty ||
        sitNReach.isEmpty) {
      Toasts.showErrorToast('Please fill out all the fields');
    } else {
      //continue
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => FourthDataInputScreen(
                  modelDataProvider: provider,
                )),
      );
    }
  }

  void validation4(BuildContext context) {
    if (vo2Max.isEmpty ||
        skillsNTechniques.isEmpty ||
        gameCondition.isEmpty ||
        genderEncoded.isEmpty ||
        agilityTest.isEmpty) {
      Toasts.showErrorToast('Please fill out all the fields');
    } else {
      getPrediction(context);
    }
  }

  void setAge(String value) {
    age = value;
    notifyListeners();
  }

  void setWeight(String value) {
    weight = value;
    notifyListeners();
  }

  void setHeight(String value) {
    height = value;
    notifyListeners();
  }

  void setBmi(String value) {
    bmi = value;
    notifyListeners();
  }

  void setBloodPressureD(String value) {
    bloodPressureDiastolic = value;
    notifyListeners();
  }

  void setBloodPressureS(String value) {
    bloodPressureSystolic = value;
    notifyListeners();
  }

  void setRandomHeartRate(String value) {
    randomHeartRate = value;
    notifyListeners();
  }

  void setFat(String value) {
    fat = value;
    notifyListeners();
  }

  void setMedicineBallThrow(String value) {
    medicineBallThrow = value;
    notifyListeners();
  }

  void setVerticalJump(String value) {
    verticleJump = value;
    notifyListeners();
  }

  void setSpeed(String value) {
    speed = value;
    notifyListeners();
  }

  void setHandGripByBodyWeight(String value) {
    handGripByBodyWeight = value;
    notifyListeners();
  }

  void setSituUpsPerMin(String value) {
    sitUpsPerMin = value;
    notifyListeners();
  }

  void setPushUpsPerMin(String value) {
    pushUpsPerMin = value;
    notifyListeners();
  }

  void setSitNreach(String value) {
    sitNReach = value;
    notifyListeners();
  }

  void setVO2Max(String value) {
    vo2Max = value;
    notifyListeners();
  }

  void setSKillsNTechniques(String value) {
    skillsNTechniques = value;
    notifyListeners();
  }

  void setGameCondition(String value) {
    gameCondition = value;
    notifyListeners();
  }

  void setGnederEncoded(String value) {
    genderEncoded = value;
    notifyListeners();
  }

  void setAgilitytest(String value) {
    agilityTest = value;
    notifyListeners();
  }
}
