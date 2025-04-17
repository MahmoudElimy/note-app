import 'package:flutter/material.dart';
import 'package:noote_app/views/widgets/custom_text_field.dart';

class AddNoteModalBottomSheet extends StatelessWidget {
  const AddNoteModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 32),
          CustomFormTextField(hintText: 'title'),
          SizedBox(height: 16),
          CustomFormTextField(hintText: 'content', maxLines: 5),
        ],
      ),
    );
  }
}
