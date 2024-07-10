import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:organization_app/widgets/card_list.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text("Organization List"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: GridView.count(
                primary: false,
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 1,
                children: const [
                  CardList(),
                  // Placeholder(
                  //   fallbackHeight: 40,
                  //   fallbackWidth: 80,
                  // ),
                  // Placeholder(
                  //   fallbackHeight: 40,
                  //   fallbackWidth: 80,
                  // ),
                  // Placeholder(
                  //   fallbackHeight: 40,
                  //   fallbackWidth: 80,
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){}, child: const Icon(Icons.add),),
    );
  }
}
