// import 'package:flutter/material.dart';

// class LearnFlutterPage extends StatefulWidget {
//   const LearnFlutterPage({super.key});

//   @override
//   State<LearnFlutterPage> createState() => LearnFlutterPageState();
// }

// class LearnFlutterPageState extends State<LearnFlutterPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Learn flutter'),
//         automaticallyImplyLeading: false,
//         leading: IconButton(
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//           icon: const Icon(Icons.arrow_back_ios),
//         ),
//       ),
//       body: Column(
//         children: [
//            'images/download.png',
//   width: double.infinity,
//   fit: BoxFit.cover,
// ),
//           const SizedBox(height: 10),
//           const Divider(color: Colors.black),
//           Image.asset(


//           Container(
//             margin: const EdgeInsets.all(20.0),
//             padding: const EdgeInsets.all(20.0), 
//             color: Colors.amberAccent,
//             width: double.infinity,
//             child: const Center(
//               child:  Text(
//                 'this is text widget',
//                 style: TextStyle(color: Colors.black),
//               ),
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: const[
//              Icon(
//             Icons.local_fire_department,
//             ),
//             Text('Row Widget'),
//              Icon(
//             Icons.local_fire_department,
//             ),
//           ],)
//         ],
//       ),
//     );
//   }
// }




import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => LearnFlutterPageState();
}

class LearnFlutterPageState extends State<LearnFlutterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flipkart'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'images/download.jpg', // Flipkart banner
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10),
          const Divider(color: Colors.black),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              "Deals of the Day",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              children: const [
                ProductCard(
                  imagePath: 'images/product1.jpg',
                  title: 'Wireless Earbuds',
                  price: '₹1,299',
                ),
                ProductCard(
                  imagePath: 'images/product2.jpg',
                  title: 'Smartwatch',
                  price: '₹2,499',
                ),
                ProductCard(
                  imagePath: 'images/product3.jpg',
                  title: 'Bluetooth Speaker',
                  price: '₹999',
                ),
                ProductCard(
                  imagePath: 'images/product4.jpg',
                  title: 'Power Bank',
                  price: '₹799',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String price;

  const ProductCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
              Text(
                price,
                style: const TextStyle(color: Colors.green),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
