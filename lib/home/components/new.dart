// import '../../constants.dart';
// import '../../responsive.dart';
// import '../flutter_flow/flutter_flow_theme.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class HomePageWidget extends StatefulWidget {
//   HomePageWidget({Key? key}) : super(key: key);

//   @override
//   _HomePageWidgetState createState() => _HomePageWidgetState();
// }

// class _HomePageWidgetState extends State<HomePageWidget> {
//   final scaffoldKey = GlobalKey<ScaffoldState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: scaffoldKey,
//       body: SafeArea(
//         child: ContestCard(),
//     );
//   }
// }

// class ContestCard extends StatelessWidget {
//   const ContestCard({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       clipBehavior: Clip.antiAliasWithSaveLayer,
//       color: Color(0xFFF5F5F5),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Image.asset(
//             'assets/images/contestImage.jpg',
//             width: 200,
//             height: 200,
//             fit: BoxFit.cover,
//           ),
//           Column(
//               // mainAxisSize: MainAxisSize.min,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(
//                       Icons.play_circle_outline,
//                       size: 40,
//                     ),
//                     RichText(
//                       text: TextSpan(
//                         text: ' PUBG MOBILE ',
//                         style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold),
//                         children: <InlineSpan>[
//                           TextSpan(
//                               text: '- Match #01',
//                               style: TextStyle(
//                                 color: kBgColor,
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 16,
//                               )),
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//                 if (!isTab(context))
//                   SizedBox(
//                     height: 10,
//                   ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   // crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left: 12.0),
//                       child: Column(
//                         children: [
//                           Text('Prize Amount'),
//                           Text(
//                             'Rs. 100',
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Text('Type'),
//                           Text(
//                             'Squad',
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Column(
//                       children: [
//                         Container(
//                           margin: EdgeInsets.only(bottom: 10, top: 10),
//                           height: 35,
//                           decoration:
//                               BoxDecoration(border: Border.all(width: 1)),
//                         ),
//                         Container(
//                           margin: EdgeInsets.only(bottom: 10, top: 10),
//                           height: 35,
//                           decoration:
//                               BoxDecoration(border: Border.all(width: 1)),
//                         )
//                       ],
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Column(
//                         children: [
//                           Text('Per Kill'),
//                           Text(
//                             '0.00',
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Text('Version'),
//                           Text(
//                             'TPP',
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Column(
//                       children: [
//                         Container(
//                           margin: EdgeInsets.only(bottom: 10, top: 10),
//                           height: 35,
//                           decoration:
//                               BoxDecoration(border: Border.all(width: 1)),
//                         ),
//                         Container(
//                           margin: EdgeInsets.only(bottom: 10, top: 10),
//                           height: 35,
//                           decoration:
//                               BoxDecoration(border: Border.all(width: 1)),
//                         ),
//                       ],
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 18.0),
//                       child: Column(
//                         children: [
//                           Text('Play for'),
//                           Text(
//                             'FREE',
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Text('Map'),
//                           Text(
//                             'Erangel',
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
                
//               ],
//             ),
//     ),
//       );
//   }
// }
