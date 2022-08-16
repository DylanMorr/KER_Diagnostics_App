import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Style {
  // Setup multiple styling for texts here
  static final baseText = const TextStyle(fontFamily: 'Poppins');

  static final smallText = commonText.copyWith(
    fontSize: 9.0,
  );
  static final commonText = baseText.copyWith(
      color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.w400);

  static final commonTextBold = baseText.copyWith(
      color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.bold);

  static final commonTextBlack = baseText.copyWith(
      color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.bold);

  static final titleText = baseText.copyWith(
      color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w600);

  static final contactTitle = baseText.copyWith(
      color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold);

  static final diagTitle = baseText.copyWith(
      color: Colors.white, fontSize: 19.0, fontWeight: FontWeight.bold);

  static final headerText = baseText.copyWith(
      color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w400);
}
