// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:zealosh/src/presentation/appWidgets/custom_appbar.dart';
// import 'package:zealosh/src/presentation/appWidgets/screens/exception.dart';
// import 'package:zealosh/utils/router_helper.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// import '../../../constants/style/app_colors.dart';

// class Notifications extends StatelessWidget {
//   const Notifications({super.key});

//   @override
//   Widget build(BuildContext context) {
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       BlocProvider.of<HomeBloc>(context)
//           .add(const HomeEvent.getNotifications());
//     });
//     SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
//         statusBarColor: kwhiteColor,
//         statusBarIconBrightness: Brightness.dark,
//         statusBarBrightness: Brightness.light));

//     return SafeArea(
//       child: Scaffold(
//           backgroundColor: const Color(0xFFF9F9F9),
//           appBar: PreferredSize(
//               preferredSize: const Size.fromHeight(48.0),
//               child: CustomAppBar(
//                 bottom: null,
//                 tTitle: 'Notifications',
//                 onPressed: () {},
//                 backButtonChek: true,
//                 iconButton: '',
//                 iconButtonChek: false,
//                 categoryChek: true,
//               )),
//           body: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
//             if (state.isLoading) {
//               return Center(
//                 child: Container(
//                   height: MediaQuery.of(context).size.height,
//                   width: MediaQuery.of(context).size.width,
//                   margin: const EdgeInsets.only(
//                       top: 20, left: 22, right: 22, bottom: 0),
//                   decoration: const BoxDecoration(
//                       color: Color.fromARGB(255, 255, 255, 255)),
//                   child: const Center(child: CircularProgressIndicator()),
//                 ),
//               );
//             } else if (state.notifications.isEmpty) {
//               return Center(
//                 child: Container(
//                   height: MediaQuery.of(context).size.height,
//                   width: MediaQuery.of(context).size.width,
//                   margin: const EdgeInsets.only(
//                       top: 20, left: 22, right: 22, bottom: 0),
//                   decoration: const BoxDecoration(
//                       color: Color.fromARGB(255, 255, 255, 255)),
//                   child: Center(
//                       child: Exceptions(
//                     image: '',
//                     message: 'No Notifications Yet.',
//                   )),
//                 ),
//               );
//             } else {
//               return SingleChildScrollView(
//                   child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [const Divider(
//                             height: 1,
//                             thickness: 1,
//                           ),
//                     Container(
//                       color: const Color.fromARGB(255, 255, 255, 255),
//                       child: ListView.separated(
//                         physics: const ScrollPhysics(),
//                         scrollDirection: Axis.vertical,
//                         shrinkWrap: true,
//                         itemBuilder: (context, index) {
//                           return  ListTile(
//                                 title: Text(state.notifications[index].title),
//                                 subtitle: Text(
//                                     state.notifications[index].description),
//                                 onTap: () {
//                                   // Handle notification tap
//                                 },
//                               );
//                             },
//                         itemCount: state.notifications.length,
//                         separatorBuilder: (context, index) {
//                           return const Divider(
//                             height: 1,
//                             thickness: 1,
//                           );
//                         },
//                       ),
//                     ),
//                     const Divider(
//                             height: 1,
//                             thickness: 1,
//                           ),
//                   ]));
//             }
//           })),
//     );
//   }
// }

// class NotificationData {
//   final int id;
//   final String title;
//   final String description;
//   final int user;

//   NotificationData({
//     required this.id,
//     required this.title,
//     required this.description,
//     required this.user,
//   });
// }

// class MyApp extends StatelessWidget {
//   final List<NotificationData> notifications = [
//     NotificationData(
//       id: 1,
//       title: "Order successful",
//       description: "software development and IT services",
//       user: 5,
//     ),
//   ];

//    MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Notifications Example',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Notifications'),
//         ),
//         body: ListView.builder(
//           itemCount: notifications.length,
//           itemBuilder: (BuildContext context, int index) {
//             return ListTile(
//               title: Text(notifications[index].title),
//               subtitle: Text(notifications[index].description),
//               onTap: () {
//                 // Handle notification tap
//               },
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
