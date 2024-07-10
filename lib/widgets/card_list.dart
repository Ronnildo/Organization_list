import 'package:flutter/material.dart';

class CardList extends StatefulWidget {
  const CardList({super.key});

  @override
  State<CardList> createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  late double progressValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 180,
      height: 160,
      decoration: BoxDecoration(
        color:
            Theme.of(context).colorScheme.onPrimaryContainer.withOpacity(0.3),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding:  EdgeInsets.only(bottom: 20.0),
            child:  Text(
              "Title Content",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          LinearProgressIndicator(
            backgroundColor: const Color(0xFFBBBBBB),
            valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFF4FAD6C)),
            value: progressValue,
            minHeight: 8,
            borderRadius: BorderRadius.circular(10),
          ),
          const Align(
            alignment: Alignment.centerRight,
            child: Text("0%"),
          ),
          CheckboxListTile(
            contentPadding: EdgeInsets.zero,
            value: false,
            tristate: false,
            onChanged: (value) {},
            title: const Text(
              "Tarefa",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 60,
                height: 20,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color(0xFF4FAD6C).withOpacity(0.4),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Text(
                  "Today",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF4FAD6C),
                  ),
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              const Text(
                "2/10",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              const Icon(
                Icons.restart_alt,
                size: 14,
              ),
            ],
          )
        ],
      ),
    );
  }
}
