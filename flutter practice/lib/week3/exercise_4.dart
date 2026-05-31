// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: const Color.fromARGB(255, 212, 121, 206),
//           title: Text("WELCOME!"),
//           centerTitle: true,
//           actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
//         ),
//         backgroundColor: Color.fromARGB(255, 239, 166, 244),
//         body: Center(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
              // //1st child
              // Container(
              //   margin: EdgeInsets.all(20),
              //   padding: EdgeInsets.all(10),
              //   decoration: BoxDecoration(
              //     color: Colors.blue,
              //     borderRadius: BorderRadius.circular(10),
              //   ),
              //   child: Image.network('https://kumagameshop.com/cdn/shop/files/O1CN01Wj9LpI1v7IleOh1ts__0-item_pic.jpg?v=1691569118&width=533', width: 200,height: 200,fit: BoxFit.cover,),

//               ),
//               //2nd
//               Container(
//                 margin: EdgeInsets.all(20),
//                 padding: EdgeInsets.all(10),
//                 decoration: BoxDecoration(
//                   color: Colors.blue,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Image.asset(name)

//               ),
//               //3rd
//                 Container(
//                 margin: EdgeInsets.all(20),
//                 padding: EdgeInsets.all(10),
//                 decoration: BoxDecoration(
//                   color: Colors.blue,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Image.network(
//                   'https://kumagameshop.com/cdn/shop/files/O1CN0176EUP31v7Iwo7pCK9__4611686018427380861-0-item_pic.jpg?v=1743582202',
//                   width: 200,
//                   height: 200,
//                   fit: BoxFit.cover,
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 212, 121, 206),
        title: Text("WELCOME!"),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
      ),
      backgroundColor: Colors.amberAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //first child
            Container(
              margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blue[300],
                ),
                child: Center(
                  child: Text(
                    "My Hobbies",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
            ),
            //2nd child has row
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blue[300],
                      ),
                      child: Center(
                        child: Text(
                          "DART",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blue[300],
                      ),
                      child: Center(
                        child: Text(
                          "Flutter",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            //3rd children also has row
            Container(
              color: const Color.fromARGB(255, 228, 172, 87),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      ),
                      ),
                      Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(shape: BoxShape.circle,color:Colors.white),
                    ),
                    Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      ),
                      ),
                      Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(shape: BoxShape.circle,color:Colors.white),
                    )
                ],
              ),
            )
          ]
        ),
      ),
    ),
  ));
}
