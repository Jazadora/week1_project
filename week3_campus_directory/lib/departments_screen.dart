import 'package:flutter/material.dart';
import 'department_detail_screen.dart';

class DepartmentsScreen extends StatelessWidget {
  const DepartmentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Departments'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ListTile(
            leading: const Icon(Icons.computer),
            title: const Text('Computer Science'),
            subtitle: const Text('Software, AI, and Data Science'),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/department/detail',
                arguments: {'name': 'Computer Science'},
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.engineering),
            title: const Text('Engineering'),
            subtitle: const Text('Civil, Mechanical, and Electrical'),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/department/detail',
                arguments: {'name': 'Engineering'},
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.business),
            title: const Text('Business Administration'),
            subtitle: const Text('Management, Finance, and Economics'),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/department/detail',
                arguments: {'name': 'Business Administration'},
              );
            },
          ),
        ],
      ),
    );
  }
}
