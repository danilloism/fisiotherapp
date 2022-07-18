import 'package:flutter/material.dart';

import '../../generated/assets.dart';
import '../widgets/button.dart';
import '../widgets/gap.dart';
import 'exercise_page.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Assets.assetsPerson),
            Text('Hey, Danillo!',
                style: Theme.of(context).textTheme.headlineMedium),
            gapH45,
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: Text(
                'Let\'s start your treatment? :)',
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
            ),
            gapH50,
            Button(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ExercisePage(),
                  ),
                );
              },
              child: const Text('Start'),
            ),
          ],
        ),
      ),
    );
  }
}
