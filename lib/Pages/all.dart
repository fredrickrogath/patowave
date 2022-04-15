











//  Widget body() {
//     // return ListView(
//     //   controller: _scrollBottomBarController,
//     //   children: <Widget>[
//     //     Text('hello'),
//     //     Text('hello'),
//     //     Text('hello'),
//     //     Text('hello'),
//     //     Text('hello'),
//     //     Text('hello'),
//     //     Text('hello'),
//     //     Text('hello'),
//     //     Text('hello'),
//     //     Text('hello'),
//     //   ],
//     // );

//     return ListView.builder(
//         // the number of items in the list
//         itemCount: 200,
//         controller: _scrollBottomBarController,

//         // display each item of the product list
//         itemBuilder: (context, index) {
//           return Card(
//               // In many cases, the key isn't mandatory
//               key: UniqueKey(),
//               child: Padding(
//                   padding: const EdgeInsets.all(10), child: Text('$index')));
//         });
//   }