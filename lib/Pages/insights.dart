import 'package:flutter/material.dart';

class Insights extends StatefulWidget {
  final int index;
  const Insights({Key? key, required this.index}) : super(key: key);

  @override
  State<Insights> createState() => _InsightsState();
}

class _InsightsState extends State<Insights> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: ListTile(
          selectedTileColor: const Color(0xFF337A6F),
          leading: GestureDetector(
            child: const CircleAvatar(
              backgroundImage: AssetImage('assets/logo/logo2.jpg'),
            ),
          ),
          title: const Text(
            "Maembe",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top:12.0),
            child: Row(children: [
              // const Text("Quantity  23", style: TextStyle(fontStyle: FontStyle.italic,)),
              const Text(
                    'Out of stock',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 13.0,
                        color: Color(0xFFe63946)),
                  ),
              const SizedBox(
                width: 10.0,
              ),
              if (2 == 2)
                Row(children: const [
                  // Text(
                  //   'Out of stock',
                  //   style: TextStyle(
                  //       fontStyle: FontStyle.italic,
                  //       fontSize: 13.0,
                  //       color: Color(0xFFe63946)),
                  // ),
                  SizedBox(
                    width: 3.0,
                  ),
                  Icon(Icons.warning_amber_outlined,
                      size: 15.0, color: Color(0xFFe63946))
                ])
              else if (2 < 0)
                Row(children: const [
                  Text(
                    'Attention',
                    style: TextStyle(
                        fontSize: 13.0,
                        fontStyle: FontStyle.italic,
                        color: Color(0xFFff9e00)),
                  ),
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
            children: const [
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  '57 Cans',
                  // style: TextStyle(color: Colors.green),
                ),
              ),
              Text('25% Margin'),
            ],
          )),
    );
  }
}
