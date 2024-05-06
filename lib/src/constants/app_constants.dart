import 'package:flutter/material.dart';

const String baseUrl = 'https://www.server.ecommerce.gokulsreejith.com';

Color parseColor(String hexColor) {
  String hex = hexColor.replaceAll("#", ""); // Remove the "#" symbol if present
  if (hex.length == 6) {
    hex = "FF$hex"; // Add FF as the alpha value if it's missing
  }
  int colorInt = int.parse(hex, radix: 16);
  return Color(colorInt);
}



const kSecondaryColor = Color(0xFF8DBC8B);
const kGreenColor = Color(0xFF8CBF4D  );
const kDGreenColor = Color(0xFF4E8C4A);
const kRedColor = Color(0xFFEA5819);
const kGrayColor = Color(0xFFACACAC);
const kDGrayColor = Color(0xFF5F5F5F);
const kBlackColor = Color(0xFF101010);
const kwhiteColor = Color(0xFFFFFFFF);
const kPrimaryGradient = LinearGradient(
  colors: [Color(0xFF46A0AE), Color(0xFF00FFCB)],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

const double kDefaultPadding = 20.0;