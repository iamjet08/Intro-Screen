import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        scrollPhysics: BouncingScrollPhysics(),
        pages: [
          PageViewModel(
            titleWidget: Text(
              "Epic Seven Tip 1",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            body:
                "Build a well-rounded team: In Epic Seven, you'll need to build a team of heroes with a variety of skills and abilities to succeed in battle. Try to have a mix of characters who can deal damage, heal, provide buffs, and debuff your enemies. Experiment with different combinations to find what works best for you.",
            image: Image.asset(
              "images/1.png",
              height: 400,
              width: 400,
            ),
          ),
          PageViewModel(
            titleWidget: Text(
              "Epic Seven Tip 2",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            body:
                "Grind for gear: In Epic Seven, gear plays a crucial role in determining your heroes' effectiveness in battle. Be sure to grind for gear regularly and equip your heroes with the best gear you have available. Don't be afraid to sell or unequip gear that is no longer useful to free up space and resources for better gear.",
            image: Image.asset(
              "images/2.png",
              height: 400,
              width: 400,
            ),
          ),
          PageViewModel(
            titleWidget: Text(
              "Epic Seven Tip 3",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            body:
                "Utilize the auto-battle feature: Epic Seven has an auto-battle feature that can save you time and effort in grinding for resources. Use this feature when grinding for gear or leveling up your heroes, but be sure to check in regularly to make sure everything is going smoothly and to make any necessary adjustments to your team.",
            image: Image.asset(
              "images/3.png",
              height: 400,
              width: 400,
            ),
          ),
        ],
        onDone: () {
          Navigator.pushNamed(context, "home");
        },
        onSkip: () {
          Navigator.pushNamed(context, "home");
        },
        showSkipButton: true,
        skip: Text(
          "Skip",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Color(0xFF6C63FF),
          ),
        ),
        next: Icon(
          Icons.arrow_forward,
          color: Color(0xFF6C63FF),
        ),
        done: Text(
          "Done",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Color(0xFF6C63FF),
          ),
        ),
        dotsDecorator: DotsDecorator(
            size: Size.square(10.0),
            activeSize: Size(20.0, 10.0),
            color: Colors.black,
            activeColor: Color(0xFF6C63FF),
            spacing: EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            )),
      ),
    );
  }
}
