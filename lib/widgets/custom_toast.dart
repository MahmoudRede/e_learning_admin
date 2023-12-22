import 'package:e_learning_admin/styles/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

customToast({
  required String title,
  required Color color
}) {
  Fluttertoast.showToast(
      msg: title,
      textColor: ColorManager.white,
      backgroundColor: color,
      gravity: ToastGravity.TOP,
      toastLength: Toast.LENGTH_LONG
  );

}