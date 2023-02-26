import 'package:flutter/material.dart';
import 'package:pionino2/components/piono_blacbutton.dart';

import 'components/piano_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'My Pionino',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          const Expanded(
            flex: 1,
            child: Center(child: Text("do re mi fa...")),
          ),
          Expanded(
            flex: 3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: (2),
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        PianoButton(notaNamber: 'do'),
                        PianoButton(notaNamber: 're'),
                        PianoButton(notaNamber: 'mi'),
                        PianoButton(notaNamber: 'fa'),
                        PianoButton(notaNamber: 'lya'),
                        PianoButton(notaNamber: 'si'),
                        PianoButton(notaNamber: 'do2'),
                        PianoButton(notaNamber: 'do'),
                        PianoButton(notaNamber: 're'),
                      ],
                    ),
                    Positioned(
                      left: 50.0,
                      right: 0.0,
                      bottom: 80,
                      top: 0.0,
                      child: Row(
                        children: const [
                          // SizedBox(width: 10),
                          PionoBlacbutton(notaNumber: 'do'),
                          PionoBlacbutton(notaNumber: 're'),

                          // SizedBox(width: 80),
                          PionoBlacbutton(visible: false, notaNumber: ''),
                          // SizedBox(width: 10),
                          PionoBlacbutton(notaNumber: 'mi'),
                          PionoBlacbutton(notaNumber: 'fa'),
                          // SizedBox(width: 60),
                          PionoBlacbutton(notaNumber: 'do2'),
                          PionoBlacbutton(visible: false, notaNumber: ''),
                          PionoBlacbutton(notaNumber: 'si'),
                        ],
                      ),
                    )
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
 // child: Stack(

            //   children: [
            //     ListView.builder(

            //       scrollDirection: Axis.horizontal,
            //       itemCount: (12),
            //       itemBuilder: (context, index) {
            //         return const PianoButton(
            //           color: Colors.white,
            //         );
            //       },
            //     ),
            //     SizedBox(
            //       height: 130,
            //       child: ListView.builder(
            //         scrollDirection: Axis.horizontal,
            //         itemCount: (9),
            //         itemBuilder: (context, index) {
            //           return const PionoBlacbutton();
            //         },
            //       ),
            //     ),
            //   ],
            // ),  // child: Stack(
            //   children: [
            //     Row(
            //       mainAxisSize: MainAxisSize.max,
            //       children: [
            //         PianoButton(),
            //         PianoButton(),
            //         PianoButton(),
            //         PianoButton(),
            //         PianoButton(),
            //         PianoButton(),
            //         PianoButton(),
            //         PianoButton(),
            //         PianoButton(),
            //       ],
            //     ),
            //     Positioned(
            //       left: 30.0,
            //       right: 0.0,
            //       bottom: 80,
            //       top: 0.0,
            //       child: Row(
            //         children: const [
            //           SizedBox(width: 10),
            //           PionoBlacbutton(),
            //           PionoBlacbutton(),
            //           SizedBox(width: 70),
            //           PionoBlacbutton(),
            //           SizedBox(width: 20),
            //           PionoBlacbutton(),
            //           PionoBlacbutton(),
            //           SizedBox(width: 60),
            //           PionoBlacbutton(),
            //         ],
            //       ),
            //     )
            //   ],
            // ),