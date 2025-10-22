// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // TRY THIS: Try running your application with "flutter run". You'll see
//         // the application has a purple toolbar. Then, without quitting the app,
//         // try changing the seedColor in the colorScheme below to Colors.green
//         // and then invoke "hot reload" (save your changes or press the "hot
//         // reload" button in a Flutter-supported IDE, or press "r" if you used
//         // the command line to start the app).
//         //
//         // Notice that the counter didn't reset back to zero; the application
//         // state is not lost during the reload. To reset the state, use hot
//         // restart instead.
//         //
//         // This works for code too, not just values: Most code changes can be
//         // tested with just a hot reload.
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           //
//           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
//           // action in the IDE, or press "p" in the console), to see the
//           // wireframe for each widget.
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text('You have pushed the button this many times:'),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

//////////////////////////////////////////////////////////////////
///Projek UTS Praktikum

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// ---------------------------
// Root App (StatelessWidget)
// ---------------------------
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Koleksi Tanaman Hias',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const PlantCollectionScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// ------------------------------------------
// StatefulWidget untuk daftar tanaman
// ------------------------------------------
class PlantCollectionScreen extends StatefulWidget {
  const PlantCollectionScreen({super.key});

  @override
  State<PlantCollectionScreen> createState() => _PlantCollectionScreenState();
}

class _PlantCollectionScreenState extends State<PlantCollectionScreen> {
  late List<Widget> _plants;

  @override
  void initState() {
    super.initState();
    _plants = [
      PlantItem(
        key: UniqueKey(),
        name: 'Monstera',
        description: 
        'Dikenal dengan daunnya yang besar dan berlubang atau terbelah.'
        '\nMemberikannya tampilan unik seperti keju Swiss.',
        imagePath: 'assets/images/monstera.jpg',
        fromNetwork: false,
      ),
      PlantItem(
        key: UniqueKey(),
        name: 'Adenium',
        description: 
        'Dikenal sebagai Kamboja Jepang atau mawar gurun.'
        '\nTerkenal karena batangnya yang unik seperti bonggol.'
        '\nDan bunganya yang berwarna-warni.',
        imagePath: 'assets/images/adenium.jpg',
        fromNetwork: false,
      ),
      PlantItem(
        key: UniqueKey(),
        name: 'Lidah Mertua',
        description: 
        'Tanaman dengan daun keras, tegak, dan ujung meruncing.'
        '\nBerasal dari Afrika dan Asia.',
        imagePath:
            'https://st2.depositphotos.com/37052746/46510/v/450/depositphotos_465100916-stock-illustration-plant-mother-in-law-s.jpg',
        fromNetwork: true,
      ),
      PlantItem(
        key: UniqueKey(),
        name: 'Sirih Gading',
        description: 
        'Dikenal dengan daunnya yang berbentuk hati berwarna hijau.'
        '\nDengan corak kuning atau keemasan.',
        imagePath:
            'https://radarkuningan.disway.id/upload/76de962069596bdf52cb6d9edcdc5be0.jpg',
        fromNetwork: true,
      ),
    ];
  }

  void _shufflePlants() {
    setState(() {
      _plants.shuffle();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Koleksi Tanaman Hias 🌺🌸💐'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Tekan tombol air 💧 untuk menyiram tanaman hias. '
                'Kamu juga bisa mengacak urutannya!',
                textAlign: TextAlign.center,
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            ..._plants,
            const SizedBox(height: 80),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _shufflePlants,
        label: const Text('Acak Urutan'),
        icon: const Icon(Icons.shuffle),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

// ------------------------------------------
// Widget tanaman
// ------------------------------------------
class PlantItem extends StatefulWidget {
  final String name;
  final String description;
  final String imagePath;
  final bool fromNetwork;

  const PlantItem({
    required super.key,
    required this.name,
    required this.description,
    required this.imagePath,
    required this.fromNetwork,
  });

  @override
  State<PlantItem> createState() => _PlantItemState();
}

class _PlantItemState extends State<PlantItem> {
  bool _isWatered = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.green.shade50,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius:
                const BorderRadius.vertical(top: Radius.circular(15)),
            child: widget.fromNetwork
                ? Image.network(
                    widget.imagePath,
                    height: 180,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.low, // biar gak berat
                    errorBuilder: (context, error, stackTrace) {
                      // kalau gagal load gambar, gak crash
                      return Container(
                        height: 180,
                        color: Colors.grey.shade200,
                        child: const Center(
                          child: Icon(Icons.broken_image,
                              color: Colors.grey, size: 50),
                        ),
                      );
                    },
                  )
                : Image.asset(
                    widget.imagePath,
                    height: 180,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              children: [
                Text(
                  widget.name,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  widget.description,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 14, color: Colors.black54),
                ),
                const SizedBox(height: 8),
                IconButton(
                  icon: Icon(
                    _isWatered ? Icons.water_drop : Icons.water_drop_outlined,
                    color: _isWatered ? Colors.blueAccent : Colors.grey,
                    size: 32,
                  ),
                  onPressed: () {
                    setState(() {
                      _isWatered = !_isWatered;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
