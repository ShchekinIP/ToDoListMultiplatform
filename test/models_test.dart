import 'package:flutter_test/flutter_test.dart';
import 'package:ios_android_flutter/model/response_token.dart';
import 'package:ios_android_flutter/sqlite/task_model.dart';

void main() {
  test('Response token constructor', () async {
    var value = ResponseToken(token: "Token");
    expect("Token", value.token);
  });

  test('Response token from Map', () async {
    Map<String, dynamic> json = {'token': "Token"};
    var value = ResponseToken.fromJson(json);
    expect("Token", value.token);
  });

}
