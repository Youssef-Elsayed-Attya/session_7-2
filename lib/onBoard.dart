import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:session7_2/home.dart';

class onBoard extends StatefulWidget {
  const onBoard({Key? key}) : super(key: key);

  @override
  State<onBoard> createState() => _onBoardState();
}

class _onBoardState extends State<onBoard> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
              title: 'firstScreen',
              body: 'hallo to the first Screen',
              image: FlutterLogo()),
          PageViewModel(
              title: 'SecondScreen',
              body: 'hallo to the Second Screen',
              image: FlutterLogo()),
          PageViewModel(
              title: 'thirdScreen',
              body: 'hallo to the third Screen',
              image: FlutterLogo(),
              footer: ElevatedButton(
                onPressed: () {},
                child: Text('gooo'),
              )),
        ],
        done: Text('done'),
        dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(10.0, 20.0),
          activeColor: Theme.of(context).colorScheme.secondary,
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        ),
        showBackButton: false,
        showNextButton: false,
        animationDuration: 1,
        onDone: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
        },
        showSkipButton: true,
        skip: Text('skip'),
      ),
    );
  }
}
