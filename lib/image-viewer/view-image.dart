// import 'package:flutter/material.dart';

// class ViewImage extends StatelessWidget {
//   final image;
//   const ViewImage({Key? key, this.image}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//           backgroundColor: Colors.white,
//           body: Container(
//             margin: const EdgeInsets.only(top: 25.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Column(
//                     children: [
//                       Stack(
//                         children: [
//                           AspectRatio(
//                             aspectRatio: 4 / 3,
//                             child: ClipRRect(
//                               borderRadius:
//                                   BorderRadius.circular(20), // Image border
//                               child: SizedBox.fromSize(
//                                   size:
//                                       const Size.fromRadius(48), // Image radius
//                                   child: Image(
//                                     image: AssetImage('$image'),
//                                     fit: BoxFit.cover,
//                                   )),
//                             ),
//                           ),
//                           Positioned(
//                             child: ElevatedButton(
//                               style: ElevatedButton.styleFrom(
//                                 primary: Colors.transparent,
//                                 elevation: 15,
//                               ),
//                               onPressed: () {
//                                 Navigator.pop(context);
//                               },
//                               child: const Icon(
//                                 Icons.arrow_back_ios,
//                                 color: Color(0xFF337A6F),
//                               ),
//                             ),
//                           )
//                         ],
//                       ),
//                       const SizedBox(
//                         height: 15.0,
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 10.0),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: const [
//                             Text(
//                               'Cocacola zero',
//                               style: TextStyle(fontWeight: FontWeight.bold),
//                             ),
//                             Text('75 orders',
//                                 style: TextStyle(fontWeight: FontWeight.bold))
//                           ],
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 8.0,
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 10.0),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Row(
//                               children: const [
//                                 Text(
//                                   'Tsh 34000 ',
//                                   style: TextStyle(
//                                       fontSize: 18.0,
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                                 Text('/caton')
//                               ],
//                             ),
//                             FloatingActionButton.extended(
//                               onPressed: () {
//                                 // Add your onPressed code here
//                               },
//                               elevation: 0.0,
//                               label: const Text(
//                                 'Add',
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   color: Color(0xFF337A6F),
//                                 ),
//                               ),
//                               icon: const Icon(
//                                 Icons.add,
//                                 color: Color(0xFF337A6F),
//                               ),
//                               backgroundColor: Colors.white,
//                             ),
//                           ],
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 8.0,
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 10.0),
//                         child: ClipRRect(
//                           borderRadius: BorderRadius.circular(5.0),
//                           child:  const Align(
//                               alignment: Alignment.center,
//                               child: Text(
//                                 "Withdraw",
//                                 // style: TextStyle(color: Colors.red),
//                               )),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           )),
//     );
//   }
// }
