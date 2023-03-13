import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_pro/model/TravelModel.dart';
import 'package:expandable_text/expandable_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.title});

  final String title;

  @override
  State<MainPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MainPage> {
  var _selectedIndec = 0;
  double imageSize = 55;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
                color: Colors.white,
                height: size.height / 1.8,
                width: double.infinity,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: size.height / 2.1,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage(travelmodel[_selectedIndec].image),
                              fit: BoxFit.cover),
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(60),
                              bottomRight: Radius.circular(60))),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      top: 0,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(210, 250, 250, 250)),
                              child: const Icon(CupertinoIcons.arrow_left),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(210, 250, 250, 250)),
                              child: const Icon(CupertinoIcons.heart),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 80,
                      child: SizedBox(
                        width: 90,
                        height: double.maxFinite,
                        child: ListView.builder(
                          itemCount: travelmodel.length,
                          itemBuilder: (context, index) {
                            return Column(children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    _selectedIndec = index;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: AnimatedContainer(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                            color: Colors.white, width: 3),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                travelmodel[index].image),
                                            fit: BoxFit.fill)),
                                    duration: const Duration(milliseconds: 200),
                                    width: _selectedIndec == index
                                        ? imageSize + 15
                                        : imageSize,
                                    height: _selectedIndec == index
                                        ? imageSize + 15
                                        : imageSize,
                                  ),
                                ),
                              ),
                            ]);
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      left: 30,
                      top: 90,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 150, 30, 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(travelmodel[_selectedIndec].name,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                            const SizedBox(
                              height: 3,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Icon(
                                  CupertinoIcons.placemark_fill,
                                  color: Colors.white,
                                ),
                                Text(
                                  travelmodel[_selectedIndec].location,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 18,
                                      color: Colors.white),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )),
            Container(
              color: Colors.white,
              width: double.infinity,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: Colors.white, width: 1)),
                      color: Colors.white,
                      child: Container(
                        width: 100,
                        height: 100,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text('Distance',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20)),
                              Text(
                                travelmodel[_selectedIndec].distance + ' Km',
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 120, 202, 222),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )
                            ]),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: Colors.white, width: 1)),
                      color: Colors.white,
                      child: Container(
                        width: 100,
                        height: 100,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text('Temp',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20)),
                              Text(
                                travelmodel[_selectedIndec].temp + ' °C',
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 120, 202, 222),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )
                            ]),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: Colors.white, width: 1)),
                      color: Colors.white,
                      child: Container(
                        width: 100,
                        height: 100,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text('Rate',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20)),
                              Text(
                                travelmodel[_selectedIndec].rate,
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 120, 202, 222),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )
                            ]),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Description',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black),
                      ),
                      const SizedBox(height: 8),
                      ExpandableText(
                        travelmodel[_selectedIndec].description,
                        style: TextStyle(fontSize: 15),
                        expandText: 'Read More',
                        collapseText: 'Read Less',
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const Text(
                            'Total Price',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 20),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            travelmodel[_selectedIndec].price,
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 18),
                          )
                        ],
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.black),
                        child: const Icon(
                          CupertinoIcons.arrow_right,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
