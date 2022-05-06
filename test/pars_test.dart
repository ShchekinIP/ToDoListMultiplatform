import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ios_android_flutter/helpers/theme.dart';
import 'package:ios_android_flutter/helpers/validation_errors.dart';

import 'package:ios_android_flutter/utils/helper.dart';

void main() {
  test('Test bool to String', () async {
    expect("true", Helper.boolToString(true));
  });


  test('parse date for / format', () async {
    expect("12 Dec 2022 12:30", Helper.parseDateForCard("12/12/2022 12:30"));
  });

  test('parse date', () async {
    var value = Helper.parseDate("12/12/2022 12:30") as DateTime;
    expect(12, value.day);
    expect(12, value.month);
    expect(2022, value.year);
    expect(12, value.hour);
    expect(30, value.minute);
  });

  test('date to string', () async {
    var datetime = DateTime.now();
    var created = Helper.dateToString(datetime) as String;
    expect(true, created.isNotEmpty);
  });

}
