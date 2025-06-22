import 'package:flutter/material.dart';

class AnalyticsDashboard extends StatelessWidget {
  const AnalyticsDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final stats = [
      {'label': 'Total Events', 'value': '70', 'icon': Icons.event},
      {'label': 'Boost Revenue', 'value': '\$3200', 'icon': Icons.monetization_on},
      {'label': 'Active Users', 'value': '580', 'icon': Icons.people},
      {'label': 'Reports', 'value': '12', 'icon': Icons.report},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Analytics Dashboard")),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 1.1,
        ),
        itemCount: stats.length,
        itemBuilder: (context, index) {
          final stat = stats[index];
          return Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            elevation: 7,
            color: const Color.fromARGB(255, 115, 224, 224),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(stat['icon'] as IconData, size: 40, color: Theme.of(context).colorScheme.primary),
                  const SizedBox(height: 10),
                  Text(stat['label'].toString(), style: const TextStyle(fontSize: 16)),
                  const SizedBox(height: 6),
                  Text(stat['value'].toString(), style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
