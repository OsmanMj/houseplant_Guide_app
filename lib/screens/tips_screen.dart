import 'package:flutter/material.dart';

class TipsScreen extends StatelessWidget {
  const TipsScreen({super.key});

  final List<Map<String, String>> tips = const [
    {
      'title': 'Don\'t Overwater',
      'content':
          'More houseplants die from overwatering than underwatering. Always check the top inch of soil before watering.'
    },
    {
      'title': 'Provide Adequate Light',
      'content':
          'Most indoor plants prefer bright, indirect light. Avoid placing them in direct, harsh sunlight which can scorch their leaves.'
    },
    {
      'title': 'Clean the Leaves',
      'content':
          'Dust can block sunlight. Wipe the leaves with a damp cloth every few weeks to keep them healthy and breathing.'
    },
    {
      'title': 'Use the Right Soil',
      'content':
          'Ensure your potting mix drains well. Cacti and succulents need sandier soil, while tropical plants prefer nutrient-rich mixes.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plant Care Tips'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: tips.length,
        itemBuilder: (context, index) {
          final tip = tips[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 16.0),
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.lightbulb, color: Colors.tealAccent),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          tip['title']!,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    tip['content']!,
                    style: const TextStyle(
                      fontSize: 15,
                      height: 1.4,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
