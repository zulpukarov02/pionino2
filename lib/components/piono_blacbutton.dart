import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class PionoBlacbutton extends StatelessWidget {
  const PionoBlacbutton({
    Key? key,
    this.visible = true,
    this.notaNumber,
  }) : super(key: key);
  final bool visible;
  final String? notaNumber;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9.5),
      child: SizedBox(
        width: 63,
        height: 150,
        child: Visibility(
          visible: visible,
          child: ElevatedButton(
            style: ButtonStyle(
                // fixedSize: MaterialStateProperty.all(Size(20, double.infinity)),
                backgroundColor:
                    MaterialStateProperty.resolveWith((states) => Colors.black),
                overlayColor: MaterialStateProperty.resolveWith((states) =>
                    states.contains(MaterialState.pressed)
                        ? Color.fromARGB(255, 8, 2, 82)
                        : null)),
            onPressed: () async {
              await AudioPlayer().play(AssetSource('$notaNumber.wav'));
            },
            child: const Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  "f3",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
