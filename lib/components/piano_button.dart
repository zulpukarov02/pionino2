import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class PianoButton extends StatelessWidget {
  const PianoButton({
    Key? key,
    this.notaNamber,
  }) : super(key: key);
  final String? notaNamber;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: SizedBox(
        width: 80,
        child: ElevatedButton(
          style: ButtonStyle(
              // fixedSize: MaterialStateProperty.all(Size(, 50)),
              backgroundColor:
                  MaterialStateProperty.resolveWith((states) => Colors.white),
              overlayColor: MaterialStateProperty.resolveWith((states) =>
                  states.contains(MaterialState.pressed)
                      ? Color.fromARGB(255, 44, 9, 246)
                      : null)),
          onPressed: () async {
            await AudioPlayer().play(AssetSource('$notaNamber.wav'));
          },
          onLongPress: () async {
            await AudioPlayer().play(AssetSource('$notaNamber.wav'));
          },
          child: const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
                "f3",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
