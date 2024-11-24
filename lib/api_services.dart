import 'dart:convert';
import 'package:http/http.dart' as http;

class APIServices {
  static Future<dynamic> getPrediction(
    String age,
    String weight,
    String height,
    String bmi,
    String randomHeartRate,
    String bloodPressureDiastolic,
    String bloodPressureSystolic,
    String fat,
    String medicineBallThrow,
    String verticleJump,
    String speed,
    String handGripByBodyWeight,
    String sitUpsPerMin,
    String pushUpsPerMin,
    String sitNReach,
    String vo2Max,
    String skillsNTechniques,
    String gameCondition,
    String genderEncoded,
    String agilityTest,
  ) async {
    const String url = "http://10.0.2.2:5000/predict";

    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          'Age': double.parse(age),
          'Blood Pressure diastolic(mmHg)':
              double.parse(bloodPressureDiastolic),
          'Blood Pressure Systolic(mmHg)': double.parse(bloodPressureSystolic),
          'Random Heart Rate(min)': double.parse(randomHeartRate),
          'Weight(kg)': double.parse(weight),
          'Height(m)': double.parse(height),
          'BMI (kg/m2)': double.parse(bmi),
          'Fat%': double.parse(fat),
          'Medicine Ball Throw(m)': double.parse(medicineBallThrow),
          'Vertical Jump(mm)': double.parse(verticleJump),
          'Speed': double.parse(speed),
          'Agility test': double.parse(agilityTest),
          'Hand grip/Body weight': double.parse(handGripByBodyWeight),
          'Sit-ups/min': double.parse(sitUpsPerMin),
          'Push-ups/min': double.parse(pushUpsPerMin),
          'Sit & reach(cm)': double.parse(sitNReach),
          'Vo2 max/kg/min': double.parse(vo2Max),
          'Skills and Techniques (%)': double.parse(skillsNTechniques),
          'Game Condition (%)': double.parse(gameCondition),
          'Gender_Encoded': int.parse(genderEncoded),
        }),
      );

      return response;
    } catch (e) {
      return '$e';
    }
  }
}
