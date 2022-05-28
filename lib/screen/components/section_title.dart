import 'package:flutter/material.dart';

class section_title extends StatelessWidget {
  const section_title({
    Key? key,
    required this.title,
    required this.pressSemua,
  }) : super(key: key);

  final String title;
  final VoidCallback pressSemua;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .subtitle1!
              .copyWith(color: Colors.black, fontWeight: FontWeight.w500),
        ),
        TextButton(
          onPressed: pressSemua,
          child: Text(
            'Semua',
          ),
        )
      ],
    );
  }
}