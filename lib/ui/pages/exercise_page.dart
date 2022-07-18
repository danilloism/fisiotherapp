import 'package:flutter/material.dart';

import '../../generated/assets.dart';
import '../widgets/button.dart';
import '../widgets/gap.dart';

class ExercisePage extends StatelessWidget {
  const ExercisePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox.expand(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'There is no video. This is just a placeholder for demonstration purposes. :)',
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
              },
              child: Image.asset(Assets.assetsHand),
            ),
            gapH50,
            Text(
              'Close and open hands',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            gapH30,
            Button(
              onPressed: () {},
              child: const Text('Done'),
            ),
            gapH70,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Series',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Text('3x', style: Theme.of(context).textTheme.titleLarge),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Repetitions',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Text('10', style: Theme.of(context).textTheme.titleLarge),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Rest',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Text('20s', style: Theme.of(context).textTheme.titleLarge),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
