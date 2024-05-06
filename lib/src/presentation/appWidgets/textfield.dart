// // ignore_for_file: library_private_types_in_public_api

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import '../../constants/app_icons.dart';
// import '../../constants/style/app_colors.dart';

// class AppTextField extends StatelessWidget {
//   final TextEditingController controller;
//   final String hintText;
//   final Function(String) onChanged;

//   const AppTextField({
//     Key? key,
//     required this.controller,
//     required this.hintText,
//     required this.onChanged,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: MediaQuery.of(context).size.width * .128,
//       width: MediaQuery.of(context).size.width * .872,
//       child: TextField(
//         controller: controller,
//         onChanged: onChanged,
//         keyboardType: TextInputType.text,
//         style: const TextStyle(
//           color: kBlackColor,
//           fontWeight: FontWeight.w400,
//         ),
//         cursorColor: kBlackColor,
//         decoration: InputDecoration(
//           filled: true,
//           fillColor: kwhiteColor,
//           focusedBorder: OutlineInputBorder(
//               borderSide: const BorderSide(color:kDGrayColor2),
//               borderRadius: BorderRadius.circular(0)),
//           enabledBorder: OutlineInputBorder(
//               borderSide: const BorderSide(color:kDGrayColor2),
//               borderRadius: BorderRadius.circular(0)),
//           hintText: hintText,
//           hintStyle: const TextStyle(
//             color: kGrayColor,
//             fontSize: 14,
//             fontWeight: FontWeight.w400,
//           ),
//         ),
//       ),
//     );
//   }
// }
// class DropdownTextField extends StatelessWidget {
//   final List<String> options;
//   final String selectedOption;
//   final void Function(String?)? onChanged;

//   const DropdownTextField({
//     Key? key,
//     required this.options,
//     required this.selectedOption,
//     required this.onChanged,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: MediaQuery.of(context).size.width * .128,
//       width: MediaQuery.of(context).size.width * .872,
//       child: DropdownButtonFormField<String>(
//         value: selectedOption,
//         onChanged: onChanged,
//         items: options.map((String option) {
//           return DropdownMenuItem<String>(
//             value: option,
//             child: Container(
//               padding: const EdgeInsets.symmetric(vertical: 4,), // Adjust as needed
//               child: Text(
//                 option,
//                 style: const TextStyle(
//                   color: kBlackColor,
//                   fontWeight: FontWeight.w400,
//                   // fontSize: 14, // Adjust the font size as needed
//                 ),
//               ),
//             ),
//           );
//         }).toList(),
//         selectedItemBuilder: (BuildContext context) {
//           return options.map<Widget>((String item) {
//             return Container(
//               padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 14), // Adjust as needed
//               child: Text(
//                 item.length <= 10 ? item : "${item.substring(0, 10)}...",
//                 style: const TextStyle(
//                   color: kBlackColor,
//                   fontWeight: FontWeight.w400,
//                   // fontSize: 14,s
//                 ),
//               ),
//             );
//           }).toList();
//         },
//         decoration: InputDecoration(
//           contentPadding: EdgeInsets.zero, // Remove internal padding
//           filled: true,
//           fillColor: kwhiteColor,
//           focusedBorder: OutlineInputBorder(
//             borderSide: const BorderSide(color:kDGrayColor2),
//             borderRadius: BorderRadius.circular(0),
//           ),
//           enabledBorder: OutlineInputBorder(
//             borderSide: const BorderSide(color:kDGrayColor2),
//             borderRadius: BorderRadius.circular(0),
//           ),
//           hintStyle: const TextStyle(
//             color: kGrayColor,
//             fontSize: 14,
//             fontWeight: FontWeight.w400,
//           ),
//         ),
//       ),
//     );
//   }
// }



// class PasswordField extends StatefulWidget {
//   const PasswordField({Key? key, required this.controller}) : super(key: key);

//   final TextEditingController controller;
//   @override
//   _PasswordFieldState createState() => _PasswordFieldState();
// }

// class _PasswordFieldState extends State<PasswordField> {
//   bool _passwordVisible = false;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: MediaQuery.of(context).size.width * .128,
//       width: MediaQuery.of(context).size.width * .872,
//       child: TextField(
//         controller: widget.controller,
//         obscureText: !_passwordVisible,
//         keyboardType: TextInputType.text,
//         style: const TextStyle(
//           color: kBlackColor,
//           fontWeight: FontWeight.w400,
//         ),
//         cursorColor: kBlackColor,
//         decoration: InputDecoration(
//             filled: true,
//             fillColor: kwhiteColor,
//             focusedBorder: OutlineInputBorder(
//                 borderSide: const BorderSide(color:kDGrayColor2),
//                 borderRadius: BorderRadius.circular(0)),
//             enabledBorder: OutlineInputBorder(
//                 borderSide: const BorderSide(color:kDGrayColor2),
//                 borderRadius: BorderRadius.circular(0)),
//             hintText: "Password",
//             hintStyle: const TextStyle(
//               color: kGrayColor,
//               fontSize: 14,
//               fontWeight: FontWeight.w400,
//             ),
//             suffixIcon: GestureDetector(
//                 onTap: () {
//                   setState(() {
//                     _passwordVisible = !_passwordVisible;
//                   });
//                 },
//                 // child: SvgPicture.asset(
//                 //   _passwordVisible ? AppIcons.visiblity : AppIcons.visiblityOff,
//                 //   fit: BoxFit.scaleDown,
                
//                 // )
//                 )
//                 ),
//       ),
//     );
//   }
// }
