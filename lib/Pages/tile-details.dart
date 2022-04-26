import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patowave/image-viewer/view-image.dart';
import 'package:photo_view/photo_view.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class TileDetails extends StatefulWidget {
  const TileDetails({Key? key}) : super(key: key);

  @override
  State<TileDetails> createState() => _TileDetailsState();
}

class _TileDetailsState extends State<TileDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xFF24564F),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: IconButton(
                // icon: FaIcon(FontAwesomeIcons.mode_night_outlined),
                icon: const Icon(Icons.edit_location_outlined),
                onPressed: () {},
              ),
            ),
          ]),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Stack(
                children: [
                  OpenContainer(
                    // closedColor: Colors.white,
                    // openColor: const Color(0xFF337A6F),
                    closedElevation: 0.0,
                    openElevation: 0.0,
                    // closedShape: const RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    // ),
                    transitionType: ContainerTransitionType.fade,
                    transitionDuration: const Duration(milliseconds: 100),
                    openBuilder: (context, action) {
                      return PhotoView(
                          imageProvider: AssetImage("assets/logo/logo2.jpg"));

                      // ViewImage(image: 'assets/logo/logo2.jpg');
                    },
                    closedBuilder: (context, action) {
                      return AspectRatio(
                        aspectRatio: 4 / 3,
                        child: ClipRRect(
                          // borderRadius:
                          //     BorderRadius.circular(20), // Image border
                          child: SizedBox.fromSize(
                              size: const Size.fromRadius(0), // Image radius
                              child: const Image(
                                image: AssetImage('assets/logo/logo2.jpg'),
                                fit: BoxFit.cover,
                              )),
                        ),
                      );
                    },
                  ),
                  Positioned(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        elevation: 0.0,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Color(0xFF337A6F),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Cocacola zero',
                    ),
                    IconButton(
                      color: Color(0XFFef233c),
                      icon: const Icon(CupertinoIcons.trash),
                      onPressed: () {
                        var alertStyle = AlertStyle(
                        // animationType: AnimationType.grow,
                        // isCloseButton: false,
                        isButtonVisible: false,
                        isOverlayTapDismiss: false,
                        descStyle: const TextStyle(fontWeight: FontWeight.bold),
                        // descTextAlign: TextAlign.center,
                        animationDuration: const Duration(milliseconds: 400),
                        alertBorder: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                          side: const BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        // titleStyle: TextStyle(
                        //   color: const Color(0xFF24564F),
                        // ),
                        alertAlignment: Alignment.center,
                      );
                      Alert(
                        context: context,
                        style: alertStyle,
                        title: "Alert",
                        content: Column(
                          children: <Widget>[
                            Container(
                                alignment: Alignment.center,
                                child: Flex(
                                    direction: Axis.vertical,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text('Are sure you want to delete this item ?', style: TextStyle(fontSize: 17.0, )),
                                      Text('Warning', style: TextStyle(color: Color(0XFFef233c), fontSize: 17.0)),
                                      Text('All of these item information will be lost', style: TextStyle(fontSize: 17.0)),
                                    ]))
                          ],
                        ),
                      ).show();
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Row(
                      children: const [
                        Text(
                          'Tsh 34000 ',
                         
                        ),
                        Text('/caton')
                      ],
                    ),
                   
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const[
                    Text('Barcode'),
                    SizedBox(height: 5.0),
                    Text('998658877676')
                  ]),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const[
                    Text('Purchase'),
                    SizedBox(height: 5.0),
                    Text('998658877676')
                  ])
                ]),
              )
,             const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const[
                    Text('Details'),
                    // SizedBox(height: 5.0),
                    // Text('998658877676')
                  ]),
                  // Column(children: const[
                  //   Text('Purchase'),
                  //   Text('998658877676')
                  // ])
                ]),
              )
              
            ],
          ),
        ],
      ),
    );
  }
}
