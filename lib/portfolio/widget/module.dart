import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../main.dart';

class Module extends StatelessWidget {
 final String? title;
 final String description;
 final List<Item> items;
  const Module({super.key,required this.description,this.title,required this.items,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null) Text(title!, style: const TextStyle(fontSize: 30)),
          Text(
            description,
            style: const TextStyle(
              fontSize: 15,
              decoration: TextDecoration.underline,
              decorationColor: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: items.asMap().entries.map((entry) {
              final index = entry.key;
              final item = entry.value;

              return TweenAnimationBuilder<double>(
                tween: Tween(begin: 0.0, end: 1.0),
                duration: Duration(milliseconds: 300 + index * 100),
                builder: (context, value, child) {
                  return Transform.scale(
                    scale: value,
                    child: Opacity(
                      opacity: value,
                      child: child,
                    ),
                  );
                },
                child: Chip(
                  label: Text(item.name),
                ),
              );
            }).toList(),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
