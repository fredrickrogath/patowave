import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:patowave/Pages/tile-details.dart';

class All extends StatefulWidget {
  final int index;
  const All({Key? key, required this.index}) : super(key: key);

  @override
  State<All> createState() => _AllState();
}

class _AllState extends State<All> {
  // String _scanBarcode = 'Unknown';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const TileDetails()),
        );
      },
      child: Card(
        elevation: 2.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: ListTile(
            selectedTileColor: const Color(0xFF337A6F),
            leading: GestureDetector(
              // child: const CircleAvatar(radius: 40.0,
              //   backgroundImage: AssetImage('assets/logo/logo2.jpg'),
              // ),
              child: Image.asset('assets/logo/logo2.jpg'),
            ),
            title: const Text(
              "Blablablaah",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Row(children: [
                const Text("Quantity  23",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                    )),
                const SizedBox(
                  width: 10.0,
                ),
                if (2 == 0)
                  Row(children: const [
                    Text(
                      'Out of stock',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 13.0,
                          color: Color(0xFFe63946)),
                    ),
                    SizedBox(
                      width: 3.0,
                    ),
                    Icon(Icons.warning_amber_outlined,
                        size: 15.0, color: Color(0xFFe63946))
                  ])
                else if (2 > 0)
                  Row(children: const [
                    SizedBox(
                      width: 3.0,
                    ),
                    Icon(Icons.warning_amber_outlined,
                        size: 15.0, color: Color(0xFFff9e00))
                  ])
                else if (2 > 20)
                  Row(children: const [
                    Text(
                      'Availlable',
                      style: TextStyle(
                          fontSize: 13.0,
                          fontStyle: FontStyle.italic,
                          color: Color(0xFF337A6F)),
                    ),
                    SizedBox(
                      width: 3.0,
                    ),
                    Icon(Icons.circle, size: 15.0, color: Color(0xFF337A6F))
                  ])
              ]),
            ),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'Tsh 13,000',
                    style: TextStyle(color: Colors.green[500]),
                  ),
                ),
                5 == 9
                    ? SizedBox(
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton.extended(
                              elevation: 1.0,
                              foregroundColor: Colors.white,
                              backgroundColor: const Color(0xFF337A6F),
                              onPressed: () {},
                              label: Row(children: const [
                                Icon(
                                  Icons.remove,
                                  size: 10.0,
                                ),
                              ])),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 3.0),
                            child: Text('hello',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.green)),
                          ),
                          FloatingActionButton.extended(
                              elevation: 1.0,
                              foregroundColor: Colors.white,
                              backgroundColor: const Color(0xFF337A6F),
                              onPressed: () {},
                              label: Row(children: const [
                                Icon(
                                  Icons.add,
                                  size: 10.0,
                                ),
                              ])),
                        ],
                      ))
                    : SizedBox(
                        height: MediaQuery.of(context).size.height / 25.0,
                        child: IconButton(
                          icon: Icon(
                            CupertinoIcons.cart_badge_plus,
                            size: 25.0,
                            color: Colors.green[500],
                          ),
                          color: Colors.white,
                          onPressed: () {},
                        ))
              ],
            )),
      ),
    );
  }
}

// Container(
//   width: double.infinity,
//   height: 40,
//   decoration: BoxDecoration(
//       color: Colors.white,
//       borderRadius: BorderRadius.circular(5)),
//   child: Center(
//     child: TextField(
//       decoration: InputDecoration(
//           prefixIcon: Icon(Icons.search),
//           suffixIcon: IconButton(
//             icon: Icon(Icons.clear),
//             onPressed: () {
//               /* Clear the search field */
//             },
//           ),
//           hintText: 'Search...',
//           border: InputBorder.none),
//     ),
//   ),
// ),
