import 'package:flutter/material.dart';

import 'Services/api_provider.dart';
import 'Services/pokemon_model.dart';

class Testq extends StatefulWidget {
  const Testq({super.key});

  @override
  State<Testq> createState() => _TestqState();
}

class _TestqState extends State<Testq> {
  ApiProvider apiProvider = ApiProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Complex Api Calls'),
      ),
      body: FutureBuilder<List<Users>>(
        future: apiProvider.getUsers(),
        builder: (context, snapshot) {
          final data = snapshot.data;
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: data!.length,
              itemBuilder: (context, index) {
                final userData = data[index];
                // final leading = userData.name!.substring(0, 1);
                return ListTile(
                  title: Text(userData.name!),
                  // subtitle: Text(userData.email!),
                  leading: CircleAvatar(
                    radius: 30,
                    // child: Text(leading),
                  ),
                );
              },
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
