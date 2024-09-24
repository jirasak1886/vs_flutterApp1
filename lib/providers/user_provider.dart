import 'package:flutter/material.dart';
import 'package:flutter_aten/models/User_model.dart';

class UserProvider extends ChangeNotifier {
  User? _user;
  String? _accessToken;
  String? _refreshToken;

  // แก้ไขการใช้ null safety
  User? get user => _user;
  String? get accessToken => _accessToken;
  String? get refreshToken => _refreshToken;

  void onLogin(Usermodel userModel) async {
    _user = userModel.user;
    _accessToken = userModel.accessToken;
    _refreshToken = userModel.refreshToken;
    notifyListeners();
  }

  void onLogout() {
    _user = null;
    _accessToken = null;
    _refreshToken = null;
    notifyListeners();
  }

  // เพิ่มฟังก์ชันเพื่อตรวจสอบสถานะการล็อกอิน
  bool isLoggedIn() {
    return _user != null && _accessToken != null && _refreshToken != null;
  }
}
