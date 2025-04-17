import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24, bottom: 24, left: 16),
      decoration: BoxDecoration(
        color: Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text(
                'Flutter Tips',
                style: TextStyle(fontSize: 26, color: Colors.black),
              ),
            ),
            subtitle: Text(
              'Build your career',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(FontAwesomeIcons.trash, color: Colors.black, size: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24, top: 16),
            child: Text(
              '17-4-2025',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black.withOpacity(0.4),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
