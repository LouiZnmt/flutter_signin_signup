import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:onboarding_screen/screen/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({Key? key}) : super(key: key);
  final List<PageViewModel> pages = [
    PageViewModel(
      title: 'Suited to all learning styles',
      body:
          'Babbel offers a range of learning materials, from bite-sized lessons to games and podcasts, meaning all learners can find a method that’s best for them.',
// title: 'First Page',
// body: 'Description',
      footer: SizedBox(
        height: 45,
        width: 150,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
// primary: Colors.green,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 8,
          ),
          onPressed: () {},
          child: const Text("Let's Go"),
        ),
      ),
      image: Center(
        child: Image.network(
          'https://www.babbelforbusiness.com/wp-content/uploads/2023/08/Product_tour02-768x739.png',
          width: 1000,
          height: 1000,),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    PageViewModel(
      title: 'Created by experts',
      body:
          'Babbel’s lessons are designed by over 150 professional linguists across 14 languages.',
      footer: SizedBox(
        height: 45,
        width: 150,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
// primary: Colors.green,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 8,
          ),
          onPressed: () {},
          child: const Text("Why to wait!"),
        ),
      ),
      image: Center(
        child: Image.network('https://www.babbelforbusiness.com/wp-content/uploads/2023/08/Group-7233-768x654.png'),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    PageViewModel(
      title: 'Ongoing support for your company​',
      body:
          'With Babbel for Business, you’re assigned a customer success manager that will help you get set up and regularly review your company’s progress.',
      footer: SizedBox(
        height: 45,
        width: 150,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 8,
          ),
          onPressed: () {},
          child: const Text("Let's Go"),
        ),
      ),
      image: Center(
        child: Image.network('https://www.babbelforbusiness.com/wp-content/uploads/2023/08/Group-7232-768x824.png')
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('On Boarding'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12, 80, 12, 12),
        child: IntroductionScreen(
          pages: pages,
          dotsDecorator: const DotsDecorator(
            size: Size(15, 15),
            color: Color.fromARGB(255, 166, 212, 250),
            activeSize: Size.square(20),
            activeColor: Color.fromARGB(255, 247, 168, 49),
          ),
          showDoneButton: true,
          done: const Text(
            'Done',
            style: TextStyle(fontSize: 20),
          ),
          showSkipButton: true,
          skip: const Text(
            'Skip',
            style: TextStyle(fontSize: 20),
          ),
          showNextButton: true,
          next: const Icon(
            Icons.arrow_forward,
            size: 25,
          ),
          onDone: () => onDone(context),
          curve: Curves.bounceOut,
        ),
      ),
    );
  }

  void onDone(context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('ON_BOARDING', false);
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }
}
