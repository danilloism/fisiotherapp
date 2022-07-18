import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

import '../../generated/assets.dart';
import '../widgets/button.dart';
import '../widgets/gap.dart';

class ExercisePage extends StatelessWidget {
  const ExercisePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Close and open hands',
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
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
          gapH20,
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
          ),
          gapH30,
          const Text(
            'Instructions:',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Text(
                    lorem(paragraphs: 1, words: 50),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          gapH20,
          Button(
            onPressed: () {},
            child: const Text('Start'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Button(
              onPressed: () {},
              child: const Text('Mark as complete'),
            ),
          ),
        ],
      ),
    );
  }
}
